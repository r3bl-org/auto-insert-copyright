#!/usr/bin/env fish

# To use a different npm registry, use the following:
# `npm config set registry https://registry.yarnpkg.com/`
#
# To switch back to the default npm registry, use the following:
# `npm config set registry https://registry.npmjs.org/`

npm install
# npm install -g typescript --verbose
npm run compile
# npm install -g vsce --verbose
vsce package

echo (set_color --bold green)"𜱐𜱐𜱐𜱐"(set_color normal)
echo (set_color --bold green)"Please manually install the copyrighter-1.0.0.vsix into VSCode and VSCode Insiders now"(set_color normal)
echo (set_color --bold green)"𜱐𜱐𜱐𜱐"(set_color normal)

# rsync -a --delete --progress ~/github/copyrighter/ ~/.vscode/extensions/copyrighter/
# rsync -a --delete --progress ~/github/copyrighter/ ~/.vscode-insiders/extensions/copyrighter/
