# dotfiles

If there is no nerd font, the characters will be garbled.

My sub dotfiles (simple dotfiles) is [H37kouya/dotfiles-light](https://github.com/H37kouya/dotfiles-light).

## Installation

It is necessary to set the nerd font.
The reference is [wiki font](https://github.com/H37kouya/dotfiles/wiki/font)

```shell
# Mac のとき
$ xcode-select --install

$ git clone https://github.com/H37kouya/dotfiles.git ~/dotfiles

$ cd ~/dotfiles

$ make deploy

$ source ~/.zshrc
```


## Update

```shell
# zinit自身の更新とプラグインの更新
$ zinit-update
```

## Homebrew

https://brew.sh/index_ja

## WSL

### Installation for hackgen


Example, Windows terminal settings

```json
{
  "profiles": {
    "defaults": {
      // Put settings here that you want to apply to all profiles.
      "fontFace": "HackGen35Nerd Console",
      "colorScheme": "Dracula"
    }
  }
}
```

- https://github.com/H37kouya/dotfiles/wiki/font

## Vscode

```json
{
  "editor.fontFamily": "'HackGen35Nerd', 'Hiragino Kaku Gothic ProN', Menlo, Monaco, 'Courier New', monospace",
  "markdown.preview.fontFamily": "HackGen35Nerd, -apple-system, BlinkMacSystemFont, 'Segoe WPC', 'Segoe UI', system-ui, 'Ubuntu', 'Droid Sans', sans-serif",
  "terminal.integrated.fontFamily": "'HackGen Console', 'Hiragino Kaku Gothic ProN', Menlo, Monaco, 'Courier New', monospace"
}
```

## Git

```shell
$ git config --local user.name <name>

$ git config --local user.email <email>
```
