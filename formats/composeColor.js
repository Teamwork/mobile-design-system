/**
 * This custom format creates an Android colors.xml file with the colours 
 * defined by the Teamwork Design System so they can be referenced in the app
 * via `R.color.color.light_color_link_default` etc.
 */
module.exports = function ({ dictionary, options }) {
  const isDarkTheme = dictionary.allProperties[0].filePath === "tokens/dark.json"

  return `package com.teamwork.design.generated

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.*

val ${getClassName(isDarkTheme)} = TeamworkColors(
${generateDataClassArguments(dictionary.allProperties)}
)\n`;
}

function getClassName(isDarkTheme) {
  if (isDarkTheme) {
    return "DarkColors"
  } else {
    return "LightColors"
  }
}

function generateDataClassArguments(allProperties) {
  return allProperties.map(token => {
    // remove the dark_ or light_ prefix since we need the colour names to be the same for both themes
    return `\t${getColorName(token.name)} = ${token.value},`;
  }).join("\n");
}

function getColorName(fullColorName) {
  if (fullColorName.startsWith("color")) {
    const colorName = fullColorName.replace("color", "");
    return colorName.charAt(0).toLowerCase() + colorName.slice(1);
  }
  return fullColorName;
}
