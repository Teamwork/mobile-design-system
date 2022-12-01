module.exports = function({ dictionary, options }) {

  // Get all types
  const types =  dictionary.allProperties.map(({ type }) => type).reduce(function(a,b){
    if (a.indexOf(b) < 0 ) a.push(b);
    return a;
  },[]);

  return `import Foundation
import UIKit

enum DesignSystem {\n\n` +
types.map(type => {
  return ` enum ${capitalizeFirstLetter(type)} {\n\n` +
  dictionary.allProperties
  .filter(token => token.type === type)
  .map(token => {
    return `  public static let ${token.name} = CGFloat(${token.value})`
  }).join(`\n`) +
  `\n }`
}).join(`\n\n`) + `\n}`
}

function capitalizeFirstLetter(string) {
  return string.charAt(0).toUpperCase() + string.slice(1);
}
