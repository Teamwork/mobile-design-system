# Mobile design system

## Project setup

1. Install dependencies: `npm ci`
1. Run Style Dictionary: `npm run build`
1. You should see Style Dictionary run and generate some files.
1. `npm run build` will run Style Dictionary and generate the artifacts for Android and iOS.

This project transforms your tokens stored on Figma Tokens (with GitHub sync enabled) to be automatically transformed with token-transformer and Style Dictionary to a iOS and Android environments with multiple themes. The theme switcher itself just adds light-theme or dark-theme to the root class, so in theory you could have not only light or dark theme but many different themes.

Change your tokens in tokens.json (either directly or with the Figma Tokens plugin in Figma). The GitHub action will automatically generate tokens to the tokens/ directory that can then be read by Style Dictionary, which will output tokens to the format you defined in build.js - iOS and Android variables will be generated in the output directory and generate utility classes.


## Colors
### iOS

iOS will handle background, fill, material, separator, text, icon (which is the same as text) on its own. Anything else will be handled by the tokens included.
