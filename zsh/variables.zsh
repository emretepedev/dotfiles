# Default programs:
export EDITOR="nvim"
export SHELL="zsh"
export TERM=xterm-256color
export GPG_TTY=$(tty)

# Antigen
export ADOTDIR="$XDG_DATA_HOME/antigen"

# GnuPG
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export GPG_TTY=$TTY

# Composer
export COMPOSER_HOME="$XDG_DATA_HOME/composer"
export COMPOSER_CACHE_DIR="$XDG_CACHE_HOME/composer"

# Node
export NVM_DIR="$XDG_DATA_HOME/nvm"
export YARN_DIR="$XDG_DATA_HOME/yarn"
export YARN_CACHE="$XDG_CACHE_HOME/yarn"
export YARN_CONFIG="$XDG_CONFIG_HOME/yarn/config"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/config"
export NODE_REPL_HISTORY="$XDG_DATA_HOME/node/repl_history"

# Ruby
export RBENV_ROOT="$XDG_DATA_HOME/rbenv"
export GEM_HOME="$XDG_DATA_HOME/gem"
export GEM_SPEC_CACHE="$XDG_CACHE_HOME/gem"
export BUNDLE_USER_CONFIG="$XDG_CONFIG_HOME/bundle"
export BUNDLE_USER_CACHE="$XDG_CACHE_HOME/bundle"
export BUNDLE_USER_PLUGIN="$XDG_DATA_HOME/bundle"
export IRBRC="$XDG_CONFIG_HOME/irb/irbrc"

# ZSH
export HISTFILE="$XDG_DATA_HOME/zsh/history"

# LESS
export LESSHISTFILE="$XDG_CACHE_HOME/less/history"

# Pass
export PASSWORD_STORE_DIR="$XDG_DATA_HOME/password-store"

# Docker
export DOCKER_CONFIG="$XDG_CONFIG_HOME/docker"

# Go
export GOPATH="$XDG_DATA_HOME/go"

# PHPENV
export PHPENV_ROOT="$XDG_DATA_HOME/phpenv"
export PHP_DEFAULT_INI="php.ini-development"

# Redis
export REDISCLI_HISTFILE="$XDG_DATA_HOME/redis/rediscli_history"
export REDISCLI_RCFILE="$XDG_CONFIG_HOME/redis/redisclirc"

# PgSQL
export PSQLRC="$XDG_CONFIG_HOME/pg/psqlrc"
export PSQL_HISTORY="$XDG_CACHE_HOME/pg/psql_history"
export PGPASSFILE="$XDG_CONFIG_HOME/pg/pgpass"
export PGSERVICEFILE="$XDG_CONFIG_HOME/pg/pg_service.conf"

# MySQL
export MYSQL_HISTFILE="$XDG_DATA_HOME/mysql/history"

# AWS
export AWS_SHARED_CREDENTIALS_FILE="$XDG_CONFIG_HOME/aws/credentials"
export AWS_CONFIG_FILE="$XDG_CONFIG_HOME/aws/config"

# Nvim
export NERDTREE_BOOKMARKS="$XDG_DATA_HOME/nvim/NERDTreeBookmarks"

# Azure
export AZURE_CONFIG_DIR="$XDG_DATA_HOME/azure"

# Path @TODO: .yarn/bin fix this
export PATH="./bin:./vendor/bin:$HOME/.local/bin:.yarn/bin:$YARN_DIR/bin:$GEM_HOME/bin:$COMPOSER_HOME/vendor/bin:$RBENV_ROOT/bin:$RBENV_ROOT/plugins/ruby-build/bin:$GOPATH/bin:$PHPENV_ROOT/bin:$PHPENV_ROOT/shims:$PATH"
