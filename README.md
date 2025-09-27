# web-project

This repo is a skeleton layout for a clientside web-app project using:
 - [Pnpm](https://pnpm.io/) for app package management;
 - [Webpack](https://webpack.js.org/) for app bundling; and
 - [TypeScript](https://www.typescriptlang.org/) for app source.

It is forked from [nix-project](https://github.com/hearnden/nix-project), which uses Nix for system package management (Node and Pnpm).

Clone it, amend this README, and update the packages in `package.json`.

## Setup

This project requires [nix](https://nixos.org/) to be globally installed.

It also requires [direnv](https://direnv.net/), to be globally installed, which can be done through Nix.

Once both are installed, `direnv allow` on this project directory will take care of everything else.

### Nix

Install [nix](https://nixos.org/download).

| Platform      | Command                                                   |
|---------------|-----------------------------------------------------------|
| MacOS         | `sh <(curl -L https://nixos.org/nix/install)`             |
| Linux         | `sh <(curl -L https://nixos.org/nix/install) --daemon`    |
| Windows (WSL) | `sh <(curl -L https://nixos.org/nix/install) --no-daemon` |

### direnv

Install [direnv](https://direnv.net/) and [nix-direnv](https://github.com/nix-community/nix-direnv).
```
nix-env -iA nixpkgs.direnv
nix-env -iA nixpkgs.nix-direnv
```

Hook direnv into your shell.

| Shell | Command                                                                        |
|-------|--------------------------------------------------------------------------------|
| Bash  | `echo 'if hash direnv; then eval "$(direnv hook bash)"; fi' >>~/.bash_profile` |
| Zsh   | `echo 'if hash direnv; then eval "$(direnv hook zsh)"; fi' >>~/.zshrc`         |

### Project

After checking out this project, run:
```
direnv allow
```
This will execute `.envrc` (which will activate the `nix-shell`) when you `cd` into this project.
The first time you do this, the dev environment will be downloaded and installed by nix.

Finally, run
```
pnpm install
```
to install all the application packages, then add and commit the generated `pnpm-lock.yaml`.

## Build

The full list of commands can be found in `package.json`.
```
pnpm build
```

This will emit the app and static assets in `dist/index.html`.
