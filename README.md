# homebrew-tap

> Personal Homebrew tap by [@hunchulchoi](https://github.com/hunchulchoi)

## Usage

### Add this tap

```sh
brew tap hunchulchoi/tap
```

### Install a formula

```sh
brew install hunchulchoi/tap/<formula>
```

Or, if you already added the tap:

```sh
brew install <formula>
```

## Formulae

| Formula | Description | Version |
|---------|-------------|---------|
| _(coming soon)_ | | |

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

MIT © [hunchulchoi](https://github.com/hunchulchoi)
