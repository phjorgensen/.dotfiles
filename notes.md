# Notes

- Good scripting languages
  - Bash
  - Python
  - Go

## todo

- [ ] Try out fish
- [ ] Theme polybar or change to yabar, with grubbox
- [ ] Learn Go
- [ ] Rewrite tmux-sessionizer in Go

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
