/**
 * This custom format creates an extension of the UIKit Color
 * class and adds all the color tokens as static variables so that
 * you can reference a color token like: `UIColor.backgroundPrimary`. 
 */
 module.exports = function({ dictionary, options }) {
    return `import UIKit
  
class MobileDesignSystemTokens {}
let bundle = Bundle(for: MobileDesignSystemTokens.self)
  
extension UIColor {\n` +
  dictionary.allProperties.map(token => {
    return `  public static var ${token.attributes.category}${capitalizeFirstLetter(token.name)}: Color {
    return UIColor(named: "${token.attributes.category}${capitalizeFirstLetter(token.name)}", in: bundle, compatibleWith: nil)
  }`
  }).join(`\n`) +
  `\n}`
}

function capitalizeFirstLetter(string) {
    return string.charAt(0).toUpperCase() + string.slice(1);
}