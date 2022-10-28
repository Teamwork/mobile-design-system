/**
 * This custom format creates an Android colors.xml file with the colours 
 * defined by the Teamwork Design System so they can be referenced in the app
 * via `R.color.color.light_color_link_default` etc.
 */
module.exports = function ({ dictionary, options }) {
  return `package com.teamwork.design.generated

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.*

data class TeamworkColors(
${generateDataClassArguments(dictionary.allProperties)}
)\n`;
}

function generateDataClassArguments(allProperties) {
  return allProperties.map(token => {
    // remove the dark_ or light_ prefix since we need the colour names to be the same for both themes
    const colorName = getColorName(token.name);
    return `\tval ${colorName}: Color = ${token.value},`;
  }).join("\n");
}

function getColorName(fullColorName) {
  if (fullColorName.startsWith("color")) {
    const colorName = fullColorName.replace("color", "");
    return colorName.charAt(0).toLowerCase() + colorName.slice(1);
  }
  return fullColorName;
}
