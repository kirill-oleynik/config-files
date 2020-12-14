source ~/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundles <<EOBUNDLES
  git
  heroku
  sublime
  command-not-found
EOBUNDLES

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Autosugegestions
antigen bundle zsh-users/zsh-autosuggestions

# Open current repo in browser
antigen bundle paulirish/git-open

# Load the theme.
antigen theme miloshadzic
# antigen theme af-magic

# Tell Antigen that you're done.
antigen cache-gen
antigen apply

# Gpg-agent configs
export GPG_TTY=$(tty)
export GPGKEY=C555C467
eval $(gpg-agent --daemon)

# Path to your oh-my-zsh installation.
export ZSH=/Users/kirilloleynik/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="miloshadzic"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(zsh-autosuggestions)

# User configuration

# export PATH="$PATH:/Users/kirilloleynik/.rvm/gems/ruby-2.3.1/bin:/Users/kirilloleynik/.rvm/gems/ruby-2.3.1@global/bin:/Users/kirilloleynik/.rvm/rubies/ruby-2.3.1/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/kirilloleynik/.rvm/bin"
# export MANPATH="/usr/local/man:$MANPATH"

# source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

export PATH="$PATH:/Users/kirilloleynik/.rvm/gems/ruby-2.3.1/bin:/Users/kirilloleynik/.rvm/gems/ruby-2.3.1@global/bin:/Users/kirilloleynik/.rvm/rubies/ruby-2.3.1/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/kirilloleynik/.rvm/gems/ruby-2.3.1/bin:/Users/kirilloleynik/.rvm/gems/ruby-2.3.1@global/bin:/Users/kirilloleynik/.rvm/rubies/ruby-2.3.1/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/kirilloleynik/.rvm/bin:/Users/kirilloleynik/.vimpkg/bin:./node_modules/.bin"

export PATH="$HOME/.yarn/bin:$PATH"

export FZF_DEFAULT_OPTS='--height 50% --reverse --border'

alias gcloud='~/Code/google-cloud-sdk/bin/gcloud'


# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/kirilloleynik/.config/yarn/global/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/kirilloleynik/.config/yarn/global/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/kirilloleynik/.config/yarn/global/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/kirilloleynik/.config/yarn/global/node_modules/tabtab/.completions/sls.zsh