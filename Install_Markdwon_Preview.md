# Markdown Preview plugin in Nvchad

1. Change `pwd` to `~/.config/nvim/lua/custom/chadrc.lua` then add the following content:
```
M.plugins = {
  user = require "custom.plugins"
}
```

2. Change `pwd` to `~/.config/nvim/lua/custom/plugins/init.lua` then add:
```
return {
  ["<github_user_name>/<repository_name>"] = {},
}
```
in the case of installing Markdown Preview, the content to be filled in is `["iamcco/markdown-preview.nvim"]`.

3. Make sure `nodejs` and `yarn` is installed.

4. Change `pwd` to `~/.local/share/nvim/site/pack/packer/start/`.

5. Clone the plugin's repo using `git clone https://github.com/iamcco/markdown-preview.nvim.git`.

6. Go into `markdown-preview.nvim`.

7. `yarn install`.

8. `yarn build`.

9. Open `nvim` and type `:PackerInstall`.

### Issues encoutnered

- After running `:MarkdownPreview`, the default browser is not prompted:
  
  - Make sure the browser's `.desktop` file exist by checking the `/usr/share/applications/` directory.

  - If `xdg-settings` do not exist, install it using `sudo pacman -S xdg-utils`.

  - Run `xdg-settings set default-web-browser <browser>.desktop`.
