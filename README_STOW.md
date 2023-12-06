## Stow files from stow_home

1. Run `cd stow_home`
2. Run `stow -vt ~ *`

## Add new configs

1. Navigate to the `stow_home` folder
2. Run `mkdir -p {APPLICATION_NAME}/{PATH_TO_CONFIG_FROM_HOME}`
3. Run `mv {PATH_TO_CONFIG} {PATH_TO_STOW_HOME_CONFIG}`
4. Run `stow -vt ~ *`

### Example

#### Files in .config or a subfolder

```bash
# With stow_home as current directory
mkdir -p nvim/.config/nvim
mv ~/.config/nvim nvim/.config
```

#### Files outside .config, i.e. directly in $HOME

```bash
# With stow_home as current directory
mkdir -p bash
mv ~/.bashrc bash
```
