/**
 * This custom format creates an extension of the UIKit Color
 * class and adds all the color tokens as static variables so that
 * you can reference a color token like: `UIColor.backgroundPrimary`. 
 */
 module.exports = function({ dictionary, options }) {
    return `import UIKit
  
extension UIColor {\n` +
  dictionary.allProperties.map(token => {
    return `  public static var ${token.name}: UIColor {
    return UIColor(named: "${token.name}", in: bundle, compatibleWith: nil).unsafelyUnwrapped
  }`
  }).join(`\n`) +
  `\n}`
}