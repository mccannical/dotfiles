# zsh reload
alias zconf="pycharm ~/.zshrc"
alias rz="exec zsh"
# bastion/helper script
alias eb="pycharm ~/src/fedramp/xops/tools/stevedore"

# dotfiles
alias de="pycharm ~/.dotfiles"
alias dotfiles='pycharm ~/.dotfiles'out

# Kubernetes
alias k=kubectl
alias ka='proxy kubectl apply -f '
alias kd='proxy kubectl delete -f '

#LSD
alias ls='lsd '
alias l='lsd --almost-all --long '
alias llm='lsd --timesort --long '
alias lS='lsd --oneline --classic '
alias lt='lsd --tree --depth=4 -lha '
alias lf='lsd --directory-only (.*|*)(^/) '

# stop rm and move to trash
## https://github.com/sindresorhus/trash-cli
## npm install --global trash-cli
alias rm=trash

# podman/docker
# Not a trailing space in value causes the next word to be checked for alias substitution when the alias is expanded.
alias docker='podman '
alias build="build --arch=linuxamd64"
alias run="run --arch=linux/amd64"

# tailscale
alias tailscale="/Applications/Tailscale.app/Contents/MacOS/Tailscale"

# git
alias gc='git commit -m '
alias gst='git status'
alias ga='git add'
alias gco='git checkout'
# helm
alias hls='helm list -A'

# zoxide
alias cd="z"

# tofu
alias tsl="tofu state list "
alias ts="tofu state show "
alias tv="tofu validate "
alias tf="tofu fmt "
alias to="tofu output "

# glab
alias gl="glab stacks list "
alias glnew="glab stacks create "
alias glsave="glab stacks save "
alias glsync="glab stacks sync "

# anisble
alias av="ansible-vault view "

# k9s
alias k9="proxy k9s"

# git
alias start_over="git reset --hard HEAD && git clean -fd"

# titles
alias AsteroidCity1="title_color 10 159 157"
alias AsteroidCity2="title_color 206 177 117"
alias AsteroidCity3="title_color 229 78 33"
alias AsteroidCity4="title_color 108 134 69"
alias AsteroidCity5="title_color 193 135 72"
alias AsteroidCity6="title_color 197 46 25"
alias AsteroidCity7="title_color 172 151 101"
alias AsteroidCity8="title_color 84 216 177"
alias AsteroidCity9="title_color 182 124 59"
alias AsteroidCity10="title_color 23 81 73"
alias AsteroidCity11="title_color 175 78 36"
alias AsteroidCity12="title_color 251 167 42"
alias AsteroidCity13="title_color 211 212 216"
alias AsteroidCity14="title_color 203 122 92"
alias AsteroidCity15="title_color 87 133 193"
alias BottleRocket1="title_color 250 213 16"
alias BottleRocket2="title_color 203 35 20"
alias BottleRocket3="title_color 39 48 70"
alias BottleRocket4="title_color 53 72 35"
alias BottleRocket5="title_color 30 30 30"
alias Rushmore1="title_color 225 189 109"
alias Rushmore2="title_color 234 190 148"
alias Rushmore3="title_color 11 119 94"
alias Rushmore4="title_color 53 39 74"
alias Rushmore5="title_color 242 48 15"
alias Rushmore6="title_color 225 189 109"
alias Rushmore7="title_color 234 190 148"
alias Rushmore8="title_color 11 119 94"
alias Rushmore9="title_color 53 39 74"
alias Rushmore10="title_color 242 48 15"
alias Royal1="title_color 137 157 164"
alias Royal2="title_color 201 51 18"
alias Royal3="title_color 250 239 209"
alias Royal4="title_color 220 134 59"
alias Royal5="title_color 154 136 34"
alias Royal6="title_color 245 205 180"
alias Royal7="title_color 248 175 168"
alias Royal8="title_color 253 221 160"
alias Royal9="title_color 116 160 137"
alias Darjeeling1="title_color 255 0 0"
alias Darjeeling2="title_color 0 160 138"
alias Darjeeling3="title_color 242 173 0"
alias Darjeeling4="title_color 249 132 0"
alias Darjeeling5="title_color 91 188 214"
alias Darjeeling6="title_color 236 203 174"
alias Darjeeling7="title_color 4 108 154"
alias Darjeeling8="title_color 214 156 78"
alias Darjeeling9="title_color 171 221 222"
alias Darjeeling10="title_color 0 0 0"
alias Chevalier1="title_color 68 100 85"
alias Chevalier2="title_color 253 210 98"
alias Chevalier3="title_color 211 221 220"
alias Chevalier4="title_color 199 177 156"
alias FantasticFox1="title_color 221 141 41"
alias FantasticFox2="title_color 226 210 0"
alias FantasticFox3="title_color 70 172 200"
alias FantasticFox4="title_color 229 134 1"
alias FantasticFox5="title_color 180 15 32"
alias Moonrise1="title_color 243 223 108"
alias Moonrise2="title_color 206 171 7"
alias Moonrise3="title_color 213 213 211"
alias Moonrise4="title_color 36 40 26"
alias Moonrise5="title_color 121 142 135"
alias Moonrise6="title_color 194 125 56"
alias Moonrise7="title_color 204 197 145"
alias Moonrise8="title_color 41 33 31"
alias Moonrise9="title_color 133 212 227"
alias Moonrise10="title_color 244 181 189"
alias Moonrise11="title_color 156 150 74"
alias Moonrise12="title_color 205 192 140"
alias Moonrise13="title_color 250 215 123"
alias Cavalcanti1="title_color 216 183 10"
alias Cavalcanti2="title_color 2 64 27"
alias Cavalcanti3="title_color 162 164 117"
alias Cavalcanti4="title_color 129 168 141"
alias Cavalcanti5="title_color 151 45 21"
alias GrandBudapest1="title_color 241 187 123"
alias GrandBudapest2="title_color 253 100 103"
alias GrandBudapest3="title_color 91 26 24"
alias GrandBudapest4="title_color 214 114 54"
alias GrandBudapest5="title_color 230 160 196"
alias GrandBudapest6="title_color 198 205 247"
alias GrandBudapest7="title_color 216 164 153"
alias GrandBudapest8="title_color 114 148 212"
alias IsleofDogs1="title_color 153 134 165"
alias IsleofDogs2="title_color 121 64 46"
alias IsleofDogs3="title_color 204 186 114"
alias IsleofDogs4="title_color 15 13 14"
alias IsleofDogs5="title_color 217 208 211"
alias IsleofDogs6="title_color 141 134 128"
alias IsleofDogs7="title_color 234 211 191"
alias IsleofDogs8="title_color 170 148 134"
alias IsleofDogs9="title_color 182 133 77"
alias IsleofDogs10="title_color 57 49 47"
alias IsleofDogs11="title_color 28 23 24"
alias FrenchDispatch1="title_color 144 212 204"
alias FrenchDispatch2="title_color 189 48 39"
alias FrenchDispatch3="title_color 176 175 162"
alias FrenchDispatch4="title_color 127 192 198"
alias FrenchDispatch5="title_color 157 156 133"

alias et='nvim ~/.tmux.conf'
alias es='nvim ~/.starship.toml'
alias ez='nvim ~/.dotfiles/zsh/'

alias redo-master='cd /Users/jesse.mccann/src/fedramp/dtex/dig/tools/porter/tf/dtex; tofu taint 'module.dtex.module.dtex-vm.google_compute_instance.compute_instance\[0\]' && make plan apply; cd -'
alias master-logs='gcloud compute ssh master0 --project=tenant-castor-ec8c --zone=us-central1-b -- sudo journalctl -n 100000 -b -f > ~/gcp.log'
alias watch-logs='lnav ~/gcp.log'
