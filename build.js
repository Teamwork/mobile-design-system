const StyleDictionary = require('style-dictionary');
const fs = require('fs-extra');

const iosPath = `TWDesignSystem-iOS/Sources/TWDesignSystem-iOS/`;
const androidPath = `android/styledictionary/src/main/res/`;
const webPath = `web/dist/`;

// before this runs we should clean the directories we are generating files in
// to make sure they are ✨clean✨
console.log(`🧹 Cleaning ${iosPath}...`);
fs.removeSync(iosPath);
console.log(`🧹 Cleaning ${androidPath}...`);
fs.removeSync(androidPath);

['global', 'light', 'dark'].map(function (theme) {
  console.log(`\n\n🌈 Building ${theme} mode...`);

  StyleDictionary.extend({
    // custom actions
    action: {
      generateColorsets: require('./actions/ios/colorsets'),
      generateGraphics: require('./actions/generateGraphics'),
    },
    // custom transforms
    transform: {
      'attribute/cti': require('./transforms/attributeCTI'),
      'colorRGB': require('./transforms/colorRGB'),
      'size/remToFloat': require('./transforms/remToFloat')
    },
    // custom formats
    format: {
      swiftColor: require('./formats/swiftColor'),
      swiftImage: require('./formats/swiftImage'),
      swiftUIColor: require('./formats/swiftUIColor'),
      swiftSize: require('./formats/swiftSize')
    },
    
    source: [
      `tokens/${theme}.json`
    ],
    
    platforms: {
      assets: {
        transforms: [`attribute/cti`,`color/hex`,`size/remToFloat`,`name/ti/camel`],
        buildPath: `${webPath}/images/`,
        iosPath,
        androidPath,
        actions: [`generateGraphics`]
      },
      
      iosColors: {
        buildPath: iosPath,
        transforms: [`attribute/cti`,`colorRGB`,`name/ti/camel`],
        actions: [`generateColorsets`]
      },
      
      iOS: {
        buildPath: iosPath,
        transforms: [`attribute/cti`,`name/ti/camel`,`size/swift/remToCGFloat`],
        files: [{
          destination: `Color.swift`,
          format: `swiftColor`,
          filter: (token) => token.type === `color`,
          options: {
            outputReferences: true
          }
        },{
          destination: `UIColor.swift`,
          format: `swiftUIColor`,
          filter: (token) => token.type === `color`,
          options: {
            outputReferences: true
          }
        },{
          destination: `DesignSystem.swift`,
          filter: (token) => typeof token.value  == 'number',
          className: `DesignSystem`,
          format: `swiftSize`
        },{
          destination: `Image.swift`,
          filter: (token) => token.type === `image`,
          format: `swiftImage`
        }]
      },
      
      android: {
        transformGroup: `android`,
        buildPath: androidPath,
        files: [{
          destination: `values/colors.xml`,
          format: `android/resources`,
          filter: (token) => token.type === `color` && token.filePath !== `tokens/dark.json`,
          options: {
            // this is important!
            // this will keep token references intact so that we don't need
            // to generate *all* color resources for dark mode, only
            // the specific ones that change
            outputReferences: true
          },
        },{
          // Here we are outputting a 'night' resource file that only has
          // the colors that have dark values. All the references
          // from the above file will properly reference
          // these colors if the OS is set to night mode.
          destination: `values-night/colors.xml`,
          format: `android/resources`,
          filter: (token) => token.type === `color` && token.filePath === `tokens/dark.json`
        },{
          destination: `values/font_dimens.xml`,
          filter: (token) => token.type === `size` &&
            token.type === `font`,
          format: `android/resources`
        },{
          destination: `values/dimens.xml`,
          filter: (token) => token.type === `size` &&
            token.type !== `custom-fontStyle`,
          format: `android/resources`
        }]
      }
    }
  }).buildAllPlatforms();
})