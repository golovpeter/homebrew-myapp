# Homebrew Tap for My Apps

This is a custom Homebrew tap containing my personal CLI tools and applications.

## What's a Tap?

A "tap" is Homebrew's term for a third-party package repository. This tap allows you to install my tools using Homebrew, just like official packages.

## Installation

First, add this tap to your Homebrew:

```bash
brew tap golovpeter/myapp
```

Then install any of the available tools:

```bash
brew install bannify
```

Or do it all in one command:

```bash
brew install golovpeter/myapp/bannify
```

## Available Formulae

### bannify
Generate colorful ASCII art banners in your terminal.

```bash
brew install bannify
bannify -c rainbow "HELLO"
```

[View on GitHub](https://github.com/golovpeter/bannify)

## Updating

To update all tools from this tap:

```bash
brew update
brew upgrade
```

## Uninstalling

To remove a specific tool:

```bash
brew uninstall bannify
```

To remove this tap completely:

```bash
brew untap username/myapp
```

## Contributing

Found a bug or have a suggestion? Please [open an issue](https://github.com/username/homebrew-myapp/issues) or submit a pull request.

## Adding More Apps

As I create more CLI tools, they'll be added to this tap. Each formula will be in the `Formula/` directory.

## License

Each formula links to its respective project, which has its own license. The formula files themselves are MIT licensed.
