#/bin/bash

if [[ $(node --version | grep -c "12\.") > 0 ]]; then
    echo "latest version of node is already installed"
else
    ## uninstall old node js
    sudo apt remove -y nodejs npm

    ## prep new node js repo
    curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -

    ## install node js
    sudo apt -y install nodejs
fi

if [[ $(npm --version | grep -c "6\.") > 0 ]]; then
    echo "latest version of npm is already installed"
else
    echo "please check latest version of npm"
fi

if [[ -z $(which nvm) || $(nvm --version | grep -c "0\.35") > 0 ]]; then
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash
else
    echo "please check latest version of nvm"
fi

echo "----- we are here ----"
## verify
node --version
npm --version
nvm --version
