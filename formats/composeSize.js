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

  return `package com.teamwork.design;
  
${Object.keys(typeMap).map(type => handleType(type, typeMap[type])).filter(it => it.length > 0).join("\n")}
`;
}

function handleType(type, tokens) {
  switch (type) {
    case "borderWidth":
      return classForFloatConstants("BorderWidth", tokens);
    case "borderRadius":
      return classForIntConstants("BorderRadius", tokens);
    case "lineHeights":
      return classForIntConstants("LineHeights", tokens);
    case "spacing":
      return classForIntConstants("Spacing", tokens);
    // not needed yet?
    // case "boxShadow":
    //   return JSON.stringify(tokens, null, 5);
    default:
      // return `type` here to see what other types there are
      return "";
  }
}

function classForFloatConstants(className, tokens) {
  return `object ${className} {
${tokens.map(token => `\tconst val ${token.name} = ${token.value}F`).join("\n")}
}`;
}

function classForIntConstants(className, tokens) {
  return `object ${className} {
${tokens.map(token => `\tconst val ${token.name} = ${token.value}`).join("\n")}
}`;
}

function handleToken(token) {
  if (token.type === "borderWidth") {
    return borderWidth(token) + "\n";
  }
  return token.type + "\n";
}

function borderWidth(token) {
  return `const val ${token.name} = ${token.value}`;
}