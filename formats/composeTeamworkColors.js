/**
 * This custom format creates an Android colors.xml file with the colours 
 * defined by the Teamwork Design System so they can be referenced in the app
 * via `R.color.color.light_color_link_default` etc.
 */
module.exports = function ({ dictionary, options }) {
  const className = options.className;
  let colorGroups = {};

  dictionary.allProperties.forEach(token => {
    // remove the dark_ or light_ prefix since we need the colour names to be the same for both themes
    const color = getColorName(token.name);
    if (typeof colorGroups[color.group] === "undefined") {
      colorGroups[color.group] = [];
    }
    color.value = token.value;
    colorGroups[color.group].push(color);
  });

  return `package com.teamwork.design.generated

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.*

data class ${className}(
${generateDataClassArguments(colorGroups)}
)\n {
${generateInnerClasses(colorGroups)}
}`;
}

function generateDataClassArguments(colorGroups) {
  return Object.keys(colorGroups).map(key => {
    const colors = colorGroups[key];
    return generateClassForGroup(key, colors);
  }).join(",\n\n");
}

function generateClassForGroup(groupName, colors) {
  const className = upperCaseFirstLetter(groupName);
  return `\tval ${groupName}: ${className} = ${className}(\n` + colors.map((color) => {
    return `\t\t${color.name} = ${color.value},`;
  }).join("\n") + "\n\t)";
}

function getColorName(fullColorName) {
  let colorName = fullColorName;
  if (fullColorName.startsWith("color")) {
    colorName = fullColorName.replace("color", "");
    colorName = lowerCaseFirstLetter(colorName);
  }

  const group = getFirstWordFromCamelCase(colorName);
  
  return {
    group: group,
    name: colorName
  };
}

function lowerCaseFirstLetter(word) {
  return word.charAt(0).toLowerCase() + word.slice(1);
}

function upperCaseFirstLetter(word) {
  return word.charAt(0).toUpperCase() + word.slice(1);
}

function getFirstWordFromCamelCase(text) {
  let word = "";
  for (i = 0; i < text.length - 1; i++) {
    const char = text.charAt(i);
    if (char == char.toUpperCase()) {
      return word;
    }
    word += char;
  }
  return text;
}

function generateInnerClasses(colorGroups) {
  return Object.keys(colorGroups).map(key => {
    const colors = colorGroups[key];
    return generateInnerClassForGroup(key, colors);
  }).join("\n\n");
}

function generateInnerClassForGroup(groupName, colors) {
  const className = upperCaseFirstLetter(groupName);
  return `\tdata class ${className}(\n` + colors.map((color) => {
    return `\t\tval ${color.name}: Color = ${color.value},`;
  }).join("\n") + "\n\t)";
}