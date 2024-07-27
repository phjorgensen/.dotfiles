# Set up fonts

## Install the fonts

1. Download the fonts.
2. Unzip the fonts if neccessary.
3. Move the font files to `~/.local/share/fonts`.
4. Run `fc-cache -f -v` to clear the font cache.
5. Run `fc-list | grep {new-font-name}` to confirm the font was added.

## Some good fonts

- Download [Mononoki](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/Mononoki.zip)
- Download [FiraCode](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/FiraCode.zip)
- Download [Monaspace](https://github.com/githubnext/monaspace)
- Download [Pixel Code](https://github.com/qwerasd205/PixelCode)

## Troubleshooting

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
