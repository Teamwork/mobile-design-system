// the list of token types we accept to generate a size dimen for. Tokens of type that are not in this
// list will not be generated.
const validSizeTokenTypes = {
  'borderWidth': { "unit": "dp" },
  'borderRadius': { "unit": "dp" },
  'lineHeights': { "unit": "sp" },
  'fontSizes': { "unit": "sp" },
  'spacing': { "unit": "dp" }
};

/**
 * Generate some sizes from the Design System such as border_radius, spacing etc.
 */
module.exports = function ({ dictionary, options }) {
  return `<?xml version="1.0" encoding="UTF-8"?>
<resources>
${generateDimens(dictionary.allProperties)}
</resources>
`;
}

function generateDimens(tokens) {
  return "\t" + tokens.map(token => generateDimenForToken(token)).join("\n\t");
}

/**
 * Generates a `<dimen name="{name}">{value}</dimen>` for the given {@link token}. Outputs a comment for any token type
 * not in {@link validSizeTokenTypes}.
 */
function generateDimenForToken(token) {
  const validTypes = Object.keys(validSizeTokenTypes);

  if (!validTypes.includes(token.type)) return `<!-- Ignoring token of type '${token.type}' -->`;
  console.log(`token: ${JSON.stringify(token, null, 4)}`);
  return `<dimen name="${token.name}">${token.value}${validSizeTokenTypes[token.type].unit}</dimen> <!-- type: ${token.type} -->`
}
