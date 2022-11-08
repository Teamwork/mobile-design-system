const StyleDictionary = require('style-dictionary');
const fs = require('fs-extra');

const iosPath = `ios/Sources/DesignSystem/`;
const androidPath = `android/styledictionary/teamwork-design-system/src/main/res/`;
const composePath = `android/styledictionary/teamwork-design-system/src/main/java/com/teamwork/design/generated/`;
const webPath = `web/dist/`;

// the name of the class generated for holding the color tokens for Compose
const composeColorsClassName = "TeamworkColors";

// before this runs we should clean the directories we are generating files in
// to make sure they are ✨clean✨
// TODO clean the Android directory again!
[iosPath, composePath, webPath].forEach(dir => {
  console.log(`🧹 Cleaning ${dir}...`);
  fs.removeSync(dir);
});

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
      'size/remToFloat': require('./transforms/remToFloat'),
      // compose
      'colorCompose': require('./transforms/colorCompose'),
    },
    // custom formats
    format: {
      swiftColor: require('./formats/swiftColor'),
      swiftImage: require('./formats/swiftImage'),
      swiftUIColor: require('./formats/swiftUIColor'),
      swiftSize: require('./formats/swiftSize'),
      //android
      androidColor: require('./formats/androidColor'),
      androidTypography: require('./formats/androidTypography'),
      composeColor: require('./formats/composeColor'),
      composeColorPalette: require('./formats/composeColorPalette'),
      composeTeamworkColors: require('./formats/composeTeamworkColors'),
      composeSize: require('./formats/composeSize'),
      composeTypography: require('./formats/composeTypography')
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
          destination: `PaletteColor.swift`,
          format: `swiftColor`,
          filter: (token) => token.type === `color` && theme === `global`,
          options: {
            outputReferences: true
          }
        },{
          destination: `PaletteUIColor.swift`,
          format: `swiftUIColor`,
          filter: (token) => token.type === `color` && theme === `global`,
          options: {
            outputReferences: true
          }
        },{
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

      compose: {
        transformGroup: 'compose',
        buildPath: composePath,
        transforms: ["color/composeColor", "name/ti/camel", "colorCompose"],
        files: [{
          destination: "ColorPalette.kt",
          format: `composeColorPalette`,
          filter: (token) => token.type === `color` && token.filePath === `tokens/global.json`,
          options: {
            className: "ColorPalette"
          }
        },{
          destination: "ColorsLight.kt",
          format: `composeColor`,
          filter: (token) => token.type === `color` && token.filePath === `tokens/light.json`,
          options: {
            colorsClassName: composeColorsClassName
          }
      },{
          destination: "ColorsDark.kt",
          format: `composeColor`,
          filter: (token) => token.type === `color` && token.filePath === `tokens/dark.json`,
          options: {
            colorsClassName: composeColorsClassName
          }
        },{
          destination: `${composeColorsClassName}.kt`,
          filter: (token) => token.type  === 'color',
          format: `composeTeamworkColors`,
          options: {
            className: composeColorsClassName
          }
        },{
          destination: `TeamworkTypography.kt`,
          filter: (token) => token.type  === 'typography',
          format: `composeTypography`,
          options: {
            className: "TeamworkTypography"
          }
        },{
          destination: `Sizes.kt`,
          filter: (token) => token.type  !== 'color' && token.type != 'typography',
          format: `composeSize`
        }]
      },
      
      android: {
        transformGroup: `android`,
        buildPath: androidPath,
        files: [{
          destination: `values/colors.xml`,
          format: `androidColor`,
          filter: (token) => token.type === `color` && token.filePath === `tokens/light.json`,
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
          format: `androidColor`,
          filter: (token) => token.type === `color` && token.filePath === `tokens/dark.json`
        },{
          destination: `values/typography.xml`,
          filter: (token) => token.type  === 'typography',
          format: `androidTypography`
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
