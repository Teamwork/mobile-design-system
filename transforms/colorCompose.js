// transformer that converts from hex code (#[aa]rrggbb) to Kotlin hex code (0xaarrggbb)
// the alpha channel is optional, but will be added to the output.
// Eg: Input #FF88DD -> Color(0xFFFF88DD)

module.exports = {
  type: `value`,
  matcher: (token) => token.type === `color`,
  transformer: (token) => {
    // convert from hex code (#aarrggbb) to Kotlin hex code (0xaarrggbb)
    let kotlinHexCode = token.value.replace("#", "").toUpperCase();

    // the alpha channel is not specified for colours with no opacity, but we need it defined when using Kotlin
    if (kotlinHexCode.length == 6) {
      // prepend the alpha channel
      kotlinHexCode = `FF${kotlinHexCode}`;
    }
    return `Color(0x${kotlinHexCode})`;
  }
}