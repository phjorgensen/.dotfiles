# Notes

- Good scripting languages
  - Bash
  - Nim?
  - Python
  - Go

## todo

- [ ] Try out fish
- [ ] Theme polybar or change to yabar, with grubbox
- [ ] Learn Go
- [ ] Rewrite tmux-sessionizer in Go
- [ ] Use telescope more (list of open buffers for instance!?)
- [ ] Set up a system for my notes
  - Push notes to git, hopefully automatically.
  - Possible plugins (from video: https://www.youtube.com/watch?v=qDAYePbuMMs)
    - epwalsh/obsidian.nvim
    - MeanderingProgrammer/render-markdown.nvim
    - iamcco/markdown-preview.nvim
  - To help focus (from https://www.youtube.com/watch?v=5ht8NYkU9wQ)
    - https://github.com/folke/zen-mode.nvim
    - https://github.com/folke/twilight.nvim
    - Remove lualine
    - Narrow the columns?
  - From this video https://www.youtube.com/watch?v=DgKI4hZ4EEI
    - markdown.nvim

# Boot.dev

## git

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

#### Show graph

`git log --oneline --graph --all`

## coreutils

### find

```bash
find . -name {fileName}
```

`.` is assumed if none is specified, so this will produce the same result.

```bash
find -name {fileName}
```

# General work learnings

## Browser history API

### pushState()

[Source](https://developer.mozilla.org/en-US/docs/Web/API/History/pushState)

Will push a new node to the history stack without navigating to it.

Sending state to the next page can be done like so:

```ts
const newState = {
  previousPage: "Current page",
};

const url = "/next-page";

history.pushState(newState, "", url);

// Navigating forward to move to the new history node
history.forward();
```

Receiving the state on the other side can be done like so:

```ts
console.log(history.state); // { previousPage: "Current page" }
```

### replaceState()

[Source](https://developer.mozilla.org/en-US/docs/Web/API/History/replaceState)

Will replace the state in the current node of the history stack.

Setting the state on the current page can be done like so:

```ts
const newState = {
  thisPage: "Current page",
};

const url = "/this-page";

history.replaceState(newState, "", url);
```

Viewing the state can be done like so:

```ts
console.log(history.state); // { thisPage: "Current page" }
```

## Markdown

### Callouts

There are a few types of callouts available in markdown

> [!NOTE]
> This is a note

> [!INFO]
> This is a danger

> [!TODO]
> This is a danger

> [!ABSTRACT]
> This is a danger

> [!SUMMARY]
> This is a danger

> [!TLDR]
> This is a danger

> [!example]
> This is a danger

> [!IMPORTANT]
> This is a danger

> [!TIP]
> This is a tip

> [!HINT]
> This is a danger

> [!SUCCESS]
> This is a success

> [!CHECK]
> This is a success

> [!DONE]
> This is a danger

> [!WARNING]
> This is a warning

> [!ATTENTION]
> This is a danger

> [!CAUTION]
> This is a danger

> [!danger]
> This is a danger

> [!error]
> This is a danger

> [!bug]
> This is a danger

> [!failure]
> This is a danger

> [!fail]
> This is a danger

> [!missing]
> This is a danger

> [!QUESTION]
> This is a danger

> [!HELP]
> This is a danger

> [!FAQ]
> This is a danger

> [!quote]
> This is a danger

> [!cite]
> This is a danger
