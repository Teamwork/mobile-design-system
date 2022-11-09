/**
 * This formatter creates a ColorPalette class containing all the `global`
 * colours. (ie the non-themed ones).
 */
module.exports = function ({ dictionary, options }) {
    return `package com.teamwork.design.generated

import androidx.compose.ui.graphics.Color

/**
 * The official Teamwork Colour Palette. These colours are not specific to any theme.
 */
@Suppress("unused")
object ${options.className || "ColorPalette"} {
${getColorsAsPropertyDefinitions(dictionary)}
}
`;
}

function getColorsAsPropertyDefinitions(dictionary) {
    return dictionary.allProperties.map(token => {
        return "\t" + getColorAsPropertyDefinition(token);
    }).join("\n");
}

function getColorAsPropertyDefinition(token) {
    return `val ${token.name}: Color = ${token.value}`;
}
