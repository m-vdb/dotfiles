dotfiles
========

My personal configuration.


Machine dependencies
====================

- Install Xcode
- Install [iTerm2](https://www.iterm2.com/) with a [nice color scheme](https://iterm2colorschemes.com/)
- Install [Brew](https://brew.sh/) with the following packages:

```bash
$ brew install htop imagemagick openssl postgis postgresql python3 redis
```

- Install [nvm](https://github.com/creationix/nvm#installation) with NodeJS version `v8.11.3`
- Install [rvm](https://rvm.io/rvm/install) with Ruby version `2.3.7`

Launching services at startup
-----------------------------

```bash
# launch Postgres at startup
$ ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents

# start Postgres now
$ launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist

# launch Redis at startup
$ ln -sfv /usr/local/opt/redis/*.plist ~/Library/LaunchAgents

# start Redis now
$ launchctl load ~/Library/LaunchAgents/homebrew.mxcl.redis.plist
```

Tweaks
------

- Increase key repeat speed with `sudo defaults write -g KeyRepeat -int 1`

Editor
======

[Sublime Text](https://www.sublimetext.com/) with
[Agila Theme](https://packagecontrol.io/packages/Agila%20Theme), installable through Package Control.
More configuration available in the `sublime/` folder.

To open files from the command line `subl`, do the following:

```bash
$ ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl
```
