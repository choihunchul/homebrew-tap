# homebrew-tap

> Personal Homebrew tap by [@choihunchul](https://github.com/choihunchul)

## Usage

### Add this tap

```sh
brew tap choihunchul/tap
```

### Install a formula

```sh
brew install choihunchul/tap/<formula>
```

Or, if you already added the tap:

```sh
brew install <formula>
```

## Formulae

| Formula | Description | Version |
|---------|-------------|---------|
| [lazyifconfig](https://github.com/choihunchul/lazyifconfig) | Terminal UI for inspecting local network state | v0.2.4 |

## Casks

| Cask | Description | Version |
|------|-------------|---------|
| _(coming soon)_ | | |

## Development

### Repository structure

```
homebrew-tap/
├── Formula/          # Homebrew formulae (.rb)
├── Casks/            # Homebrew casks (.rb)
└── README.md
```

### Adding a new formula

1. Create a new Ruby file under `Formula/`:

   ```sh
   touch Formula/<name>.rb
   ```

2. Implement the formula following the [Homebrew Formula Cookbook](https://docs.brew.sh/Formula-Cookbook).

3. Test locally:

   ```sh
   brew install --build-from-source ./Formula/<name>.rb
   brew test ./Formula/<name>.rb
   brew audit --strict ./Formula/<name>.rb
   ```

### Adding a new cask

1. Create a new Ruby file under `Casks/`:

   ```sh
   touch Casks/<name>.rb
   ```

2. Implement the cask following the [Homebrew Cask Cookbook](https://docs.brew.sh/Cask-Cookbook).

3. Test locally:

   ```sh
   brew install --cask ./Casks/<name>.rb
   brew audit --cask ./Casks/<name>.rb
   ```

## License

MIT © [choihunchul](https://github.com/choihunchul)
