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
  return `  <style name="${token.name}">
    <item name="android:fontFamily">${token.value.fontFamily}</item>
    <item name="android:textSize">${token.value.fontSize}</item>
    <item name="android:letterSpacing">${calculateLetterSpacing(token.value.letterSpacing)}</item>
    <item name="android:lineSpacingExtra">${token.value.lineHeight}</item> <!-- TODO this is lineHeight not lineSpacingExtra -->
  </style>`;
}

function calculateLetterSpacing(letterSpacing) {
  if (indexOf(letterSpacing, "%") != -1) {
    // We treat percentages as em units. Eg: -2% -> 0.98.em
    const letterSpacingNumber = parseInt(letterSpacing.replace("%", ""));

    return (100 + letterSpacingNumber) / 100.0 + "em";
  }
  // No percentage will be treated as sp units
  return `${letterSpacing}sp`;
}
