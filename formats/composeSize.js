const { indexOf } = require("lodash");

/**
 * Generate some sizes from the Design System such as BorderRadius, Spacing etc.
 */
module.exports = function ({ dictionary, options }) {
  // Group all the types together: returns map of type -> [token]
  const typeMap =  dictionary.allProperties.reduce((acc, token) => {
    if (!acc.hasOwnProperty(token.type)) {
      acc[token.type] = [];
    }
    acc[token.type].push(token);
    return acc;
  }, /* inital value for the acc is an empty map*/ {});

  return `@file:Suppress("unused")
  
package com.teamwork.design.generated

import androidx.compose.ui.unit.dp
  
${Object.keys(typeMap).map(type => handleType(type, typeMap[type])).filter(it => it.length > 0).join("\n\n")}
`;
}

function handleType(type, tokens) {
  switch (type) {
    case "borderWidth":
      return classForNumberConstants("BorderWidth", tokens);
    case "borderRadius":
      return classForNumberConstants("BorderRadius", tokens);
    case "lineHeights":
      return classForNumberConstants("LineHeights", tokens);
    case "spacing":
      return classForNumberConstants("Spacing", tokens);
    // not needed yet?
    // case "boxShadow":
    //   return JSON.stringify(tokens, null, 5);
    default:
      // return `type` here to see what other types there are
      return "";
  }
}

function classForNumberConstants(className, tokens) {
  return `object ${className} {
${tokens.map(token => `\tval ${token.name} = ${token.value}.dp`).join("\n")}
}`;
}
