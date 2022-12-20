const { indexOf } = require("lodash");

/**
 * This custom format creates an XML file containing the <style>s for the different Typography tokens.
 */
module.exports = function ({ dictionary, options }) {
  return `<?xml version="1.0" encoding="utf-8"?>
<resources>
${dictionary.allProperties.map(token => getTextStyleForToken(token)).join("\n\n")}
</resources>`;
}

function getTextStyleForToken(token) {
  return `  <!--
    Token Name: ${token.name}
    ========================= 
    ${Object.keys(token.value).map(key => `${key} => ${token.value[key]}`).join("\n\t")}
  -->
  <style name="${token.name}">
    ${getFontFamilyTag(token)}
    <item name="android:textSize">${token.value.fontSize}sp</item>
    <item name="android:letterSpacing">${calculateLetterSpacing(token.value.fontSize, token.value.letterSpacing)}</item>
    ${getLineHeightTag(token)}
  </style>`;
}

function getFontFamilyTag(token) {
  const fontFamilyValue = getFontFamilyValue(token.value.fontFamily, token.value.fontWeight);
  if (fontFamilyValue == null) {
    return "<!-- no fontFamily specified as we want to use the default Roboto -->"; // this is the default font, it's included in the system
  }
  return `<item name="android:fontFamily">${fontFamilyValue}</item>`
}

function getFontFamilyValue(fontFamily, fontWeight) {
  if (fontFamily == "Roboto") {
    return null; // this is the default font, it's included in the system
  }
  return `@font/${fontFamily.toLowerCase()}_${fontWeight.toLowerCase()}`;
}

function calculateLetterSpacing(fontSize, letterSpacing) {
  if (indexOf(letterSpacing, "%") != -1) {
    // We treat percentages as em units. Eg: -2% -> -0.02
    const letterSpacingNumber = parseInt(letterSpacing.replace("%", ""));

    return letterSpacingNumber / 100.0;
  }
  // No percentage means we need to calculate it ourselves
  return `${letterSpacing / fontSize}`;
}

function getLineHeightTag(token) {
  const nameAttribute = "android:lineSpacingExtra";
  const lineHeight = token.value.lineHeight;
  const textSize = token.value.fontSize;
  const value = lineHeight - textSize;

  return `<item name="${nameAttribute}">${value}sp</item>`
}
