A set of scripts to automatically `npm shrinkwrap` and `npm install` as needed.

If you stage a change to `package.json`, the pre-commit hook will run `npm shrinkwrap` to update `npm-shrinkwrap.json`.

If a commit is merged that has changed `npm-shrinkwrap.json`, the post-merge hook will run `npm install` to update the `node_modules` directory.

Also included is a sample setup script which assumes that all these files are under `bin/hooks` in your repo.

# Installation

Just copy the `bin` directory into your repo. Then each user runs `bin/hooks/_setup.sh`.
