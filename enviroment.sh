# Atualizando os repositórios, como de praxe
sudo apt update

# Instalando dependências
sudo apt install curl apt-transport-https

# Instalando aws cli
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
rm -rf aws/
rm awscliv2.zip

# Ativando auto-completion para aws cli em Bash
complete -C '/usr/local/bin/aws_completer' aws

# Ativando auto-completion para aws cli em Zsh
echo -e "autoload bashcompinit && bashcompinit\nautoload -Uz compinit && compinit" >> .zshrc
complete -C '/usr/local/bin/aws_completer' aws

# Instalando github cli
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update
sudo apt install gh

# Instalando slack
sudo snap install slack --classic

# Instalando docker

sudo apt-get update

sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io

sudo usermod -aG docker $USER

## Configurando ambiente de desenvolvimento mobile

# Instalando o android studio
sudo snap install android-studio --classic

# Inslando dart
sudo sh -c 'wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -'
sudo sh -c 'wget -qO- https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list > /etc/apt/sources.list.d/dart_stable.list'
sudo apt update
sudo apt install dart

echo 'export PATH="$PATH:/usr/lib/dart/bin"' >> ~/.profile

# Instalando flutter
sudo snap install flutter --classic
flutter sdk-path

## Fim mobile

