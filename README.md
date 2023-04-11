# nix-project

This repo is a skeleton layout for a project using:
 - [Nix](https://nixos.org/) for dependency management, and
 - [Direnv](https://direnv.net/) for provisioning a shell CLI environment.

Clone it, amend this README, and update the packages in `shell.nix`.

## Notes

This skeleton does not yet use [Flakes](https://nixos.wiki/wiki/Flakes).

One of Nix's goals is to be a tool for reproducible environments.
Every other reproducible-environment tool uses lock files (e.g., `yarn.lock`, `maven_install.json`, ...).
Flakes are an upcoming feature, 20 years after Nix's initial release, to make Nix use lockfiles.

Once Flakes are ready, they will be the right way to use Nix.

## Setup

This project requires Nix be globally installed: [nix](https://nixos.org/).
It also requires [direnv](https://direnv.net/), to be globally installed, which can be done through Nix.

### Global Setup

Install [nix](https://nixos.org/download).

| Platform      | Command                                                   |
|---------------|-----------------------------------------------------------|
| MacOS         | `sh <(curl -L https://nixos.org/nix/install)`             |
| Linux         | `sh <(curl -L https://nixos.org/nix/install) --daemon`    |
| Windows (WSL) | `sh <(curl -L https://nixos.org/nix/install) --no-daemon` |

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

### Local

After checking out this project, run:
```
direnv allow
```
This will execute `.envrc` (which will activate the `nix-shell`) when you `cd` into this project.
The first time you do this, the dev environment will be downloaded and installed by nix.
