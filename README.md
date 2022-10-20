# Mobile design system

## Project setup

1. Install dependencies: `npm ci`
1. Run Style Dictionary: `npm run build`
1. You should see Style Dictionary run and generate some files.
1. `npm run build` will run Style Dictionary and generate the artifacts for Android, iOS, and web
1. `npm start` will run the build command and start a watcher to watch for changes and rebuild

## Project structure

Design token source:
* **tokens/** Source design token files. The source token files are written in [JSON]
* **assets/** SVG graphics that use design tokens.

Custom Style Dictionary code:
* **actions/** custom [Style Dictionary action](https://amzn.github.io/style-dictionary/#/actions) code
* **formats/** custom [Style Dictionary format](https://amzn.github.io/style-dictionary/#/formats) code
* **transforms/** custom [Style Dictionary transforms](https://amzn.github.io/style-dictionary/#/transforms)

Output and demo directories:
* **android/designtokens** Generated Style Dictionary files for Android. This doesn't follow the same pattern as the other platforms because directory structure matters for Android.
* **ios/dist** Generated Style Dictionary files for iOS
* **web/dist** Generated Style Dictionary files for web

## Multi-file method

The multi-file method is based on the [multi-brand-multi-platform example](https://github.com/amzn/style-dictionary/tree/main/examples/advanced/multi-brand-multi-platform) built by [Cristiano Rastelli](https://twitter.com/areaweb). This method also resembles how Android handles color modes: selectively using different resource files based on context. The main idea with this method is to run Style Dictionary multiple times with varying sets of token files and outputting different sets of artifacts, one for each color mode: light and dark. Style Dictionary takes all the source token files it finds from the config and does a deep merge to create one big object. Therefore you can run Style Dictionary with one set of source files and rerun it with some additional files that override specific tokens to generate a collection of artifacts for light mode and dark mode.

```json
// color/background.json
{
  "color": {
    "background": {
      "primary": { "value": "{color.core.neutral.0.value}" }
    }
  }
}
```

```json
// color-dark/background.json
{
  "color": {
    "background": {
      "primary": { "value": "{color.core.neutral.1000.value}" }
    }
  }
}
```

Notice that the object structure of the token files is the same for both light/default and dark mode. We are only overriding the value. Then we run Style Dictionary once with the only light/default token file and once with the dark token file to generate a set of light-mode outputs and dark-mode outputs.