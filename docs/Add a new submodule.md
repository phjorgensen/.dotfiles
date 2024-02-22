# Add new submodule

Check [Git Tools - Submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules) for more info

1. Run `git submodule add [-b <branch>] <url> [subfolder]`
2. You don't need to run `git submodule init` or `git submodule update` here, it's done automatically.

## Example

```bash
git submodule add https://github.com/chaconinc/DbConnector stow_home/i3/
```
