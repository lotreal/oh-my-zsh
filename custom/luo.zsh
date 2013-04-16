#{{{自定义补全
#补全 ping
zstyle ':completion:*:ping:*' hosts 192.168.128.1{38,} www.g.cn \
    192.168.{1,0}.1{{7..9},}

#补全 ssh scp sftp 等
my_accounts=(
    {r00t,root}@{192.168.1.1,192.168.0.1}
    kardinal@linuxtoy.org
    123@211.148.131.7
)
zstyle ':completion:*:my-accounts' users-hosts $my_accounts
#}}}

#路径别名 {{{
#进入相应的路径时只要 cd ~xxx
hash -d www="/a/www/"
hash -d yk="/a/www/yk/"
hash -d yue="/a/www/yk/yk-app-yue/"
#}}}

[[ -s "$HOME/.nvm/nvm.sh" ]] && source "$HOME/.nvm/nvm.sh" # This loads NVM
compctl -g '~/.teamocil/*(:t:r)' teamocil
