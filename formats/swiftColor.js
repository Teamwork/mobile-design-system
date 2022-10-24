/**
 * This custom format creates an extension of the SwiftUI Color
 * class and adds all the color tokens as static variables so that
 * you can reference a color token like: `Color.backgroundPrimary`. 
 * 
 * @example
 * ```swift
 * Text("Hello, World!")
 *   .backgroundColor(Color.backgroundPrimary)
 *   .foregroundColor(Color.fontPrimary)
 * ```
 */
module.exports = function({ dictionary, options }) {
  return `import SwiftUI

class MobileDesignSystemTokens {}
let bundle = Bundle(for: MobileDesignSystemTokens.self)

extension Color {\n\n` +
  dictionary.allProperties.map(token => {
    return `  public static var ${token.attributes.category}${capitalizeFirstLetter(token.name)}: Color {
    return Color.init("${token.attributes.category}${capitalizeFirstLetter(token.name)}", bundle: bundle)
  }`
  }).join(`\n`) +
  `\n}`
}

function capitalizeFirstLetter(string) {
  return string.charAt(0).toUpperCase() + string.slice(1);
}