##                  ##
# okmt's bashrc v0.1 #
##                  ##

# bashがinteractiveじゃない場合にreturnする
case $- in
    *i*) ;;
      *) return;;
esac

##                ##
# for bash history #
##                ##
HISTSIZE=10000 # 使用中のbashに持っておける履歴の件数
HISTFILESIZE=20000 # .bash_historyの履歴の件数
HISTTIMEFORMAT='%F %T ' # 履歴に日時をつける
HISTCONTROL=erasedups # 重複したコマンドは保存しない
HISTIGNORE='history:pwd:ls:ll:la:w:top'
shopt -s histappend # 複数の端末でコマンド履歴を結合する
shopt -s checkwinsize # 画面の大きさに応じてLINESとCOLUMNSを更新する

##                      ##
# プロンプトの表示の設定 #
##                      ##
PS1='\[\e[1;32m\][\D{%FT%T}]\[\e[m\] \[\e[1;35m\]\u@\h:\w\[\e[m\] \$ ' 

##     ##
# alias #
##     ##
alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -la'
alias l='ls -CF'

##                     ##
# .bash_aliases読み込み #
##                     ##
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
