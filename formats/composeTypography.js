const { indexOf, unary } = require("lodash");

/**
 * This custom format creates a file for Compose that contains the Typography definitions for 
 * the tokens.
 * 
 * @example
 * ```Kotlin
 * Text(
 *    ...
 *    textStyle = TeamworkTypography.headlineLarge
 * )
 * ```
 */
module.exports = function ({ dictionary, options }) {
  return `package com.teamwork.design.generated
  
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.font.Font
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontStyle
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.em
import androidx.compose.ui.unit.sp
import com.teamwork.mobile.design.R

private val Poppins = FontFamily(
  Font(R.font.poppins_regular, weight = FontWeight.Normal),
  Font(R.font.poppins_medium, weight = FontWeight.Medium),
  Font(R.font.poppins_semibold, weight = FontWeight.SemiBold),
  Font(R.font.poppins_bold, weight = FontWeight.Bold),
)
  
@Suppress("unused")
object TeamworkTypography {
${dictionary.allProperties.map(token => getTextStyleForToken(token)).join("\n\n")}
}`;
}

function getTextStyleForToken(token) {
/**
 * "value": {
               "fontFamily": "Poppins",
               "fontWeight": "Regular",
               "lineHeight": 40,
               "fontSize": 32,
               "letterSpacing": "-2%",
               "paragraphSpacing": "",
               "paragraphIndent": "",
               "textCase": "none",
               "textDecoration": "none"
          },
 */

  // fontStyle can be FontStyle.Normal or FontStyle.Italic
  return `\t/**
\t * ${JSON.stringify(token.value, null, 5)}
\t **/
\tval ${token.name} = TextStyle(
    \tfontFamily = ${resolveFontFamily(token.value.fontFamily)},
    \tfontStyle = FontStyle.Normal,
    \tfontWeight = FontWeight.${getFontWeight(token.value.fontWeight)},
    \tlineHeight = ${token.value.lineHeight}.sp,
    \tletterSpacing = ${calculateLetterSpacing(token.value.letterSpacing)},
    \tfontSize = ${token.value.fontSize}.sp
\t)`;
}

function getFontWeight(fontWeight) {
  switch (fontWeight) {
    case "Regular":
      return "Normal";
    default:
      return fontWeight;
  }
}

function calculateLetterSpacing(letterSpacing) {
  if (indexOf(letterSpacing, "%") != -1) {
    // We treat percentages as em units. Eg: -2% -> 0.98.em
    const letterSpacingNumber = parseInt(letterSpacing.replace("%", "")) / 100.0;
    const unaryOperatorWrapping = letterSpacingNumber < 0 ? `(${letterSpacingNumber})` : letterSpacingNumber;

    return unaryOperatorWrapping + ".em";
  }
  // No percentage will be treated as sp units
  return `${letterSpacing}.sp`;
}

function resolveFontFamily(fontFamily) {
  switch (fontFamily) {
    case "Roboto":
      return "FontFamily.Default";
    default:
      return fontFamily;
  }
}
