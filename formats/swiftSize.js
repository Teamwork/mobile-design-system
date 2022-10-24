module.exports = function({ dictionary, options }) {

  const borderRadius =  ` enum BorderRadius {\n\n` +
  dictionary.allProperties
  .filter(token => token.type === `borderRadius`)
  .map(token => {
    return `  public static let ${token.name} = CGFloat(${token.value})`
  }).join(`\n`) +
  `\n }`

  const borderWidth =  ` enum BorderWidth {\n\n` +
  dictionary.allProperties
  .filter(token => token.type === `borderWidth`)
  .map(token => {
    return `  public static let ${token.name} = CGFloat(${token.value})`
  }).join(`\n`) +
  `\n }`

  const space =  ` enum Space {\n\n` +
  dictionary.allProperties
  .filter(token => token.type === `spacing`)
  .map(token => {
    return `  public static let ${token.name} = CGFloat(${token.value})`
  }).join(`\n`) +
  `\n }`

  const sizes = [borderRadius, borderWidth, space];

  return `import Foundation

enum Size {\n` +

sizes.join(`\n\n`) +
  `\n\n}`
}