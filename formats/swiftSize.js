module.exports = function({ dictionary, options }) {
  return `import Foundation

class MobileDesignSystemTokens {}
let bundle = Bundle(for: MobileDesignSystemTokens.self)

enum Sizes {\n\n` +
  dictionary.allProperties.map(token => {
    return `  public static let ${token.name} = CGFloat(${token.value})`
  }).join(`\n`) +
  `\n}`
}