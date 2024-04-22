# Set up fonts

## Install the fonts

- Download [Mononoki](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/Mononoki.zip)
  - Add the `.ttf` files to `~/.local/share/fonts`
- Download [FiraCode](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/FiraCode.zip)
  - Add the `.ttf` files to `~/.local/share/fonts`
- Download [Monaspace](https://github.com/githubnext/monaspace)
  - Add the `.otf` files to `~/.local/share/fonts`
- Download [Pixel Code](https://github.com/qwerasd205/PixelCode)
  - Add the `.otf` files to `~/.local/share/fonts`

### Fixes for Kitty

For some reason, Monaspace won't display correctly in Kitty. It's being looked at, but this is a temporary fix:

1. Add the XML below into a file located at `~/.config/fontconfig/conf.d/20-monaspace.conf`, create the file and folders as needed.
2. Run `fc-cache -f`

```xml
<?xml version="1.0"?>
<!DOCTYPE fontconfig SYSTEM "fonts.dtd">
<fontconfig>
    <match target="scan">
        <test name="family" compare="contains">
            <string>Monaspace</string>
        </test>
        <edit name="spacing">
            <const>dual</const>
        </edit>
    </match>
</fontconfig>
```

Fix found in [this](https://github.com/githubnext/monaspace/issues/15#issuecomment-1822269591) StackOverflow question.
