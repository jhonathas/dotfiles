# shell
alias ll="ls -Glahs"
alias ls="/bin/ls -G"
alias psgrep="ps aux | egrep -v egrep | egrep"

# tools
alias internal_ip="ipconfig getifaddr en0"
alias myip='export IP=`curl -s https://api.ipify.org`;echo $IP'

# git
alias ga="git log --graph"
alias gs="git status"
alias gp="git push"
alias gf="git fetch origin -p"
alias gl="git log --graph"
alias gpr="git pull --rebase"
alias gca="git commit --ammend"
alias grh="git reset --hard"
alias gffs="git flow feature start"
alias gffp="git flow feature publish"
alias gfff="git flow feature finish"
alias gfft="git flow feature track"
alias gfhs="git flow hotfix start"
alias gfhp="git flow hotfix publish"
alias gfhf="git flow hotfix finish"
alias gfht="git flow hotfix track"

# elixir
alias mt="mix test"
alias mps="mix phx.server"
alias iexm="iex -S mix"

# docker
alias drop_cache="sudo sh -c \"echo 3 >'/proc/sys/vm/drop_caches' && swapoff -a && swapon -a && printf '\n%s\n' 'Ram-cache and Swap Cleared'\""
docker_images_clear() {
  docker rmi $(docker images -f "dangling=true" -q)
}