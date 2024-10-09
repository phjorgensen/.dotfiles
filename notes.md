# Notes

- Good scripting languages
  - Bash
  - Python
  - Go

# Boot.dev

## Git

### git log

`git log` is a command to show the history of the commits in your repository.

#### --decorate

This flag will change how the branch names are displayed in the result from `git log`.

The `short` is the default, and will only display the branch name.

```bash
git log --decorate=short
```

```bash
commit 014fe1fcdbf3c6c9f7252202fbd5129093f72f62 (HEAD -> add_classics)
Author: phjorgensen <phjorgensenn@gmail.com>
Date:   Wed Oct 9 22:07:28 2024 +0200

    D: add classics
```

The `full` option will display the full ref name. A ref is a pointer to a commit.

```bash
git log --decorate=full
```

```bash
commit 014fe1fcdbf3c6c9f7252202fbd5129093f72f62 (HEAD -> refs/heads/add_classics)
Author: phjorgensen <phjorgensenn@gmail.com>
Date:   Wed Oct 9 22:07:28 2024 +0200

    D: add classics
```

The `no` option will not display any branch information at all.

```bash
git log --decorate=no
```

```bash
commit 014fe1fcdbf3c6c9f7252202fbd5129093f72f62
Author: phjorgensen <phjorgensenn@gmail.com>
Date:   Wed Oct 9 22:07:28 2024 +0200

    D: add classics
```

#### --oneline

This flag will give a more compact result form `git log`.

```bash
git log --oneline
```

```bash
014fe1f (HEAD -> add_classics) D: add classics
3e81e7c (main) C: add quotes
980690b B: add titles.md
fbf7372 A: add contents.md
```
