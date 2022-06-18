# Node-SCript
function nsc() {
    if [[ -f package.json ]]; then
        printf "\033[36m%-44s\033[0m %-20s\n" "[Command]" "[Description]"
        cat package.json | jq ".scripts" | grep : | sed -e 's/,//g' |  awk -F "\": \"" '{printf "(npm run|yarn)\033[36m%-30s\033[0m %-20s\n", $1, $2}' | sed -e 's/\"//g'
    fi
}

# zinit の更新
function zinit-update() {
    # Self update
    zinit self-update

    # Plugin parallel update
    zinit update --parallel
}

# update all
function update-all() {
    # software update
    softwareupdate -ia

    # brew update
    brew update
    brew upgrade

    # zinit update
    zinit-update
}

# kill してはいけなさそうなプロセスは kill しないようにする kill
function skill() {
    if ps | grep $1 | awk '{print $4}' | grep -q -e zsh -e bash -e login -e darwin; then
        echo 'このプロセスは zsh か bash 、login です。本当にキルしていいのですか？'
        echo 'kill -9 '$1
    else
        kill -9 $1
    fi
}

function intellij() {
    open -na ~/Applications/JetBrains\ Toolbox/IntelliJ\ IDEA\ Ultimate.app --args .
}
