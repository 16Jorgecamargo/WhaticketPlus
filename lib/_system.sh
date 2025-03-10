#!/bin/bash
# 
# system management

#######################################
# creates user
# Arguments:
#   None
#######################################
system_create_user() {
  print_banner
  printf "${WHITE} 💻 Agora, vamos criar o usuário para deploywhaticketplus...${GRAY_LIGHT}"
  printf "\n\n"

  sleep 2
 
  sudo su - root <<EOF
  useradd -m -p $(openssl passwd $deploy_password) -s /bin/bash -G sudo deploywhaticketplus
  usermod -aG sudo deploywhaticketplus
  mv "${PROJECT_ROOT}"/whaticket.zip /home/deploywhaticketplus/
EOF

  sleep 2
}

#######################################
# unzip whaticket
# Arguments:
#   None
#######################################
system_unzip_whaticket() {
  print_banner
  printf "${WHITE} 💻 Fazendo unzip whaticket...${GRAY_LIGHT}"
  printf "\n\n"

  sleep 2

  sudo su - deploywhaticketplus <<EOF
  unzip whaticket.zip
EOF

  sleep 2
}

#######################################
# updates systemuplicates() {
# Arguments:er
#   None "${WHITE} 💻 Corrigindo repositórios duplicados...${GRAY_LIGHT}"
#######################################
system_update() {
  print_banner
  printf "${WHITE} 💻 Vamos atualizar o sistema...${GRAY_LIGHT}"
  printf "\n\n"t <<EOF
  # Remove o arquivo google.list que está causando duplicações com google-chrome.list
  sleep 2 "/etc/apt/sources.list.d/google.list" ]; then
    echo "Removendo arquivo duplicado: /etc/apt/sources.list.d/google.list"
    rm -f /etc/apt/sources.list.d/google.list
    apt update
  sudo apt-get install -y libxshmfence-dev libgbm-dev wget unzip fontconfig locales gconf-service libasound2 libatk1.0-0 libc6 libcairo2 libcups2 libdbus-1-3 libexpat1 libfontconfig1 libgcc1 libgconf-2-4 libgdk-pixbuf2.0-0 libglib2.0-0 libgtk-3-0 libnspr4 libpango-1.0-0 libpangocairo-1.0-0 libstdc++6 libx11-6 libx11-xcb1 libxcb1 libxcomposite1 libxcursor1 libxdamage1 libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 libxss1 libxtst6 ca-certificates fonts-liberation libappindicator1 libnss3 lsb-release xdg-utils
EOF
}
  sleep 2
}######################################
# updates system
#######################################
# installs node
# Arguments:###########################
#   Nonepdate() {
#######################################
system_node_install() {amos atualizar o sistema...${GRAY_LIGHT}"
  print_banner"
  printf "${WHITE} 💻 Instalando o Node.js...${GRAY_LIGHT}"
  printf "\n\n"

  sleep 2onar chamada para corrigir duplicações antes de atualizar
  system_fix_apt_duplicates
  sudo su - root <<EOF
  curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
  apt-get install -y nodejs
  sleep 2t-get install -y libxshmfence-dev libgbm-dev wget unzip fontconfig locales gconf-service libasound2 libatk1.0-0 libc6 libcairo2 libcups2 libdbus-1-3 libexpat1 libfontconfig1 libgcc1 libgconf-2-4 libgdk-pixbuf2.0-0 libglib2.0-0 libgtk-3-0 libnspr4 libpango-1.0-0 libpangocairo-1.0-0 libstdc++6 libx11-6 libx11-xcb1 libxcb1 libxcomposite1 libxcursor1 libxdamage1 libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 libxss1 libxtst6 ca-certificates fonts-liberation libappindicator1 libnss3 lsb-release xdg-utils
  npm install -g npm@latest
  sleep 2
  sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
  wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
  sudo apt-get update -y && sudo apt-get -y install postgresql
  sleep 2##############################
  sudo timedatectl set-timezone America/Sao_Paulo
  sleep 2ts:
  sudo -u postgres psql -c "ALTER USER postgres PASSWORD '2000@23';"
  sudo -u postgres psql -c "CREATE DATABASE whaticketwhaticketplus;"
  exit_node_install() {
EOFrint_banner
  printf "${WHITE} 💻 Instalando o Node.js...${GRAY_LIGHT}"
  sleep 2"\n\n"
}
  sleep 2
#######################################
# installs docker<<EOF
# Arguments: https://deb.nodesource.com/setup_16.x | sudo -E bash -
#   Nonet install -y nodejs
#######################################
system_docker_install() {st
  print_banner
  printf "${WHITE} 💻 Instalando docker...${GRAY_LIGHT}"pos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
  printf "\n\n"-O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
  sudo apt-get update -y && sudo apt-get -y install postgresql
  sleep 2
  sudo timedatectl set-timezone America/Sao_Paulo
  # Verifica se o sistema é Ubuntu
  sudo -u postgres psql -c "ALTER USER postgres PASSWORD '2000@23';"
  sudo -u postgres psql -c "CREATE DATABASE whaticketwhaticketplus;"
    if [ "$ID" = "ubuntu" ]; then
      ubuntu_docker_install
    elif [ "$ID" = "debian" ]; then
      debian_docker_install
    else
      printf "${RED} ❌ Sistema operacional não suportado.${NC}"
    fi#################################
  elsealls docker
    printf "${RED} ❌ Não é possível determinar o sistema operacional.${NC}"
  fiNone
}######################################
system_docker_install() {
ubuntu_docker_install() {
  sudo su - root <<EOFInstalando docker...${GRAY_LIGHT}"
  apt update\n"
  apt install -y apt-transport-https \
                 ca-certificates curl \
                 software-properties-common
  # Verifica se o sistema é Ubuntu
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
    source /etc/os-release
  add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
      ubuntu_docker_install
  apt update$ID" = "debian" ]; then
  apt install -y docker-cel
EOF else
      printf "${RED} ❌ Sistema operacional não suportado.${NC}"
  sleep 2
} else
    printf "${RED} ❌ Não é possível determinar o sistema operacional.${NC}"
debian_docker_install() {
  sudo su - root <<EOF
  apt update
  apt install -y apt-transport-https \
                 ca-certificates curl \
                 gnupg lsb-release
  apt install -y apt-transport-https \
  curl -fsSL https://download.docker.com/linux/debian/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
                 software-properties-common
  echo \
    "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian \
    \$(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null
  add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
  apt update
  apt install -y docker-ce docker-ce-cli containerd.io
EOFpt install -y docker-ce
EOF
  sleep 2
} sleep 2
#######################################
# Ask for file location containing
# multiple URL for streaming.
# Globals:- root <<EOF
#   WHITEate
#   GRAY_LIGHT-y apt-transport-https \
#   BATCH_DIR    ca-certificates curl \
#   PROJECT_ROOT gnupg lsb-release
# Arguments:
#   NonefsSL https://download.docker.com/linux/debian/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
#######################################
system_puppeteer_dependencies() {
  print_banner=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian \
  printf "${WHITE} 💻 Instalando puppeteer dependencies...${GRAY_LIGHT}"t > /dev/null
  printf "\n\n"
  apt update
  apt install -y docker-ce docker-ce-cli containerd.io
EOF

  apt-get install -y libxshmfence-dev \
                      libgbm-dev \
                      wget \###########
                      unzip \ining
                      fontconfig \
                      locales \
                      gconf-service \
                      libasound2 \
                      libatk1.0-0 \
                      libc6 \
                      libcairo2 \
                      libcups2 \
                      libdbus-1-3 \####
                      libexpat1 \
                      libfontconfig1 \
                      libgcc1 \o puppeteer dependencies...${GRAY_LIGHT}"
                      libgconf-2-4 \
                      libgdk-pixbuf2.0-0 \
                      libglib2.0-0 \
                      libgtk-3-0 \
                      libnspr4 \
                      libpango-1.0-0 \\
                      libpangocairo-1.0-0 \
                      libstdc++6 \
                      libx11-6 \
                      libx11-xcb1 \
                      libxcb1 \
                      libxcomposite1 \
                      libxcursor1 \
                      libxdamage1 \
                      libxext6 \
                      libxfixes3 \
                      libxi6 \ \
                      libxrandr2 \\
                      libxrender1 \
                      libxss1 \nfig1 \
                      libxtst6 \
                      ca-certificates \
                      fonts-liberation \ \
                      libappindicator1 \
                      libnss3 \0 \
                      lsb-release \
                      xdg-utils1.0-0 \
EOF                   libpangocairo-1.0-0 \
                      libstdc++6 \
  sleep 2             libx11-6 \
}                     libx11-xcb1 \
                      libxcb1 \
#######################################
                      libxcursor1 \
                      libxdamage1 \
                      libxext6 \
                      libxfixes3 \
                      libxi6 \
                      libxrandr2 \
  printf "${WHITE} 💻 Instalando pm2...${GRAY_LIGHT}"
  printf "\n\n"       libxss1 \
                      libxtst6 \
                      ca-certificates \
                      fonts-liberation \
                      libappindicator1 \
                      libnss3 \
                      lsb-release \
  env PATH=\$PATH:/usr/bin pm2 startup ubuntu -u deploywhaticketplus --hp /home/deploywhaticketplus
EOF

  sleep 2 
}

system_execute_comand() {##############
  print_banner
  printf "${WHITE} 💻 Executando comandos...${GRAY_LIGHT}"
  printf "\n\n"
#######################################
  sleep 2 _install() {
  print_banner
  sudo su - root <<EOFInstalando pm2...${GRAY_LIGHT}"
  usermod -aG sudo deploywhaticketplus
  sudo apt install ffmpeg
  sleep 2
  grep -q "^deploywhaticketplus ALL=(ALL) NOPASSWD: ALL$" /etc/sudoers || echo "deploywhaticketplus ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
  sudo su - root <<EOF
  echo "deploywhaticketplus ALL=(ALL) NOPASSWD: ALL" | EDITOR='tee -a' visudo
  sudo apt install ffmpegeploywhaticketplus
  env PATH=\$PATH:/usr/bin pm2 startup ubuntu -u deploywhaticketplus --hp /home/deploywhaticketplus
EOF

  sleep 2 
}

system_execute_comand() {
#######################################
# set timezoneITE} 💻 Executando comandos...${GRAY_LIGHT}"
# Arguments:\n"
#   None
#######################################
system_set_timezone() {
  print_bannerot <<EOF
  printf "${WHITE} 💻 Instalando pm2...${GRAY_LIGHT}"
  printf "\n\n"all ffmpeg

  grep -q "^deploywhaticketplus ALL=(ALL) NOPASSWD: ALL$" /etc/sudoers || echo "deploywhaticketplus ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

  echo "deploywhaticketplus ALL=(ALL) NOPASSWD: ALL" | EDITOR='tee -a' visudo
  sudo apt install ffmpeg

EOF

  sleep 2 
}


#######################################
# set timezone
# Arguments:
#   None
#######################################
system_set_timezone() {
  print_banner
  printf "${WHITE} 💻 Instalando pm2...${GRAY_LIGHT}"
  printf "\n\n"

  sleep 2

  ufw allow 80/tcp && ufw allow 22/tcp && ufw allow 443/tcp && ufw allow 8080/tcp && ufw allow 8081/tcp && ufw allow 3000/tcp && ufw allow 9005/tcp && ufw allow 3003/tcp && ufw allow 6379/tcp && ufw allow 5432/tcp && ufw allow 443/tcp
EOFimedatectl set-timezone America/Sao_Paulo
EOF
  sleep 2
} sleep 2
}
#######################################
# installs snapd
# Arguments:###########################
#   Nonew
#######################################
system_snapd_install() {
  print_banner#########################
  printf "${WHITE} 💻 Instalando snapd...${GRAY_LIGHT}"
  printf "\n\n"
  printf "${WHITE} 💻 Instalando pm2...${GRAY_LIGHT}"
  sleep 2"\n\n"

  sudo su - root <<EOF
  apt install -y snapd
  snap install coreEOF
  snap refresh core&& ufw allow 22/tcp && ufw allow 443/tcp && ufw allow 8080/tcp && ufw allow 8081/tcp && ufw allow 3000/tcp && ufw allow 9005/tcp && ufw allow 3003/tcp && ufw allow 6379/tcp && ufw allow 5432/tcp && ufw allow 443/tcp
EOF

  sleep 2
}

#######################################
# installs certbot
# Arguments:
#   None
#######################################
system_certbot_install() {
  print_banner
  printf "${WHITE} 💻 Instalando certbot...${GRAY_LIGHT}"
  printf "\n\n"

  sleep 2

  sudo su - root <<EOF
  apt install -y snapd
  snap install --classic certbot
  ln -s /snap/bin/certbot /usr/bin/certbot
EOF

  sleep 2
}

#######################################
# installs nginxot
# Arguments:
#   None
#######################################
system_nginx_install() { {
  print_banner
  printf "${WHITE} 💻 Instalando nginx...${GRAY_LIGHT}"}"
  printf "\n\n"

  sleep 2

  sudo su - root <<EOF
  apt -y install nginxot
  # Verificar se o arquivo existe antes de tentar remover
  if [ -f "/etc/nginx/sites-enabled/default" ]; then/certbot /usr/bin/certbot
    rm /etc/nginx/sites-enabled/default
  fi
EOF

  sleep 2
}

#######################################
# restarts nginx
# Arguments:
#   None
#######################################
system_nginx_restart() {
  print_banner
  printf "${WHITE} 💻 reiniciando nginx...${GRAY_LIGHT}"
  printf "\n\n"

  sleep 2

  sudo su - root <<EOFm /etc/nginx/sites-enabled/default
  service nginx restart  sudo apt update
EOF

  sleep 2  sleep 2
}

##################################################################
# restarts nginxfor nginx.conf
# Arguments:
#   None
################################################################
system_nginx_conf() {
  print_banner
  printf "${WHITE} 💻 configurando nginx...${GRAY_LIGHT}"  printf "${WHITE} 💻 reiniciando nginx...${GRAY_LIGHT}"
  printf "\n\n""\n\n"

  sleep 2

sudo su - root << EOF

cat > /etc/nginx/conf.d/whaticket.conf << 'END'
client_max_body_size 20M;
ENDleep 2
}
EOF
######################################
  sleep 2# setup for nginx.conf
}

##################################################################
# installs nginxginx_conf() {
# Arguments:
#   Nonenfigurando nginx...${GRAY_LIGHT}"
#######################################"
system_certbot_setup() {
  print_banner
  printf "${WHITE} 💻 Configurando certbot...${GRAY_LIGHT}"
  printf "\n\n" root << EOF

  sleep 2

  backend_domain=$(echo "${backend_url/https:\/\/}")END
  frontend_domain=$(echo "${frontend_url/https:\/\/}")

  sudo su - root <<EOF
  certbot -m $deploy_email \
          --nginx \
          --agree-tos \
          --non-interactive \####################################
          --domains $backend_domain,$frontend_domain# installs nginx
EOFts:
   None
  sleep 2#######################################


}system_certbot_setup() {
  print_banner
  printf "${WHITE} 💻 Configurando certbot...${GRAY_LIGHT}"
  printf "\n\n"

  sleep 2













}  sleep 2EOF          --domains $backend_domain,$frontend_domain          --non-interactive \          --agree-tos \          --nginx \  certbot -m $deploy_email \  sudo su - root <<EOF  frontend_domain=$(echo "${frontend_url/https:\/\/}")
  backend_domain=$(echo "${backend_url/https:\/\/}")