# auto-insert-copyright

<img
  src="https://github.com/r3bl-org/auto-insert-copyright/blob/main/auto-insert-copyright-icon.png?raw=true"
  width="256"
/>

`auto-insert-copyright` is a VSCode extension that can automatically include your
copyright and license (if you have one) in your source code.

## Install locally

Run `./deploy_locally.fish` to install the extension locally for both VSCode and VSCode
Insiders.

## Background

Manually including a copyright and license takes time and cognitive energy away from
coding. This extension automates the process, similar to what you might find in a
JetBrains IDE.

## Features

When you open a supported file type, `auto-insert-copyright` will automatically add your
copyright notice (and optional license), if they are missing.

New files will be created with the copyright notice (and optional license) automatically
injected at the top of the file.

You can utilize the VS Code command `Prepend Copyright`, to manually add your copyright
notice to the current file.

You can also change the file extensions that trigger this extension. They are in the
`package.json` file, in the `activationEvents` key. The value is an array of extensions
that will activate this extension. So if you want to add a copyright message on top
of a file that's not in that array, you can add it. Then rebuild it and then reinstall
it in your VSCode. Similarly, if you would like to remove an extension, you can drop it
from the array, and rebuild the extension, and reinstall into your VSCode.

## Requirements

This extension is designed to work ri./ght out of the box. No configuration is required in
order to get started.

However, there are a couple extension settings (documented below) that you can utilize to
enhance the experience.

## Extension Settings

This extension contributes the following settings:

- `copyrighter.author`: Set the author that holds the copyright
- `copyrighter.license`: Select a license header to include with your copyright. If no license is
  selected, then only the copyright will be added to files.

If you want to provide your own defaults, you can do so by adding the following to your
`.vscode/settings.json` folder (nested inside whatever your workspace folder is):

```json
{
  "copyrighter.author": "Your Name",
  "copyrighter.license": "MIT"
}
```

## Release Notes

If you have any feedback feel free to submit an issue to this repository.

### 1.0.0

This release marks the upgrade of the `package.json` to the latest dependencies required by the
latest VSCode at the time (Oct 31 2024) which is `1.95.0`.
