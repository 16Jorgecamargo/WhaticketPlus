#!/bin/bash

# import variables
if [[ -e "${PROJECT_ROOT}"/variables/_app.sh ]]; then
  source "${PROJECT_ROOT}"/variables/_app.sh
else
  echo "Criando arquivo de variáveis do aplicativo..."
  cat > "${PROJECT_ROOT}"/variables/_app.sh << 'END'
#!/bin/bash

# URLs
frontend_url=""
backend_url=""

# server settings
deploy_password=""
mysql_root_password=""
db_pass=""
db_user="root"
db_name="whaticket"
jwt_secret=""
jwt_refresh_secret=""
deploy_email=""
END
  source "${PROJECT_ROOT}"/variables/_app.sh
fi

source "${PROJECT_ROOT}"/variables/_general.sh
source "${PROJECT_ROOT}"/variables/_background.sh
source "${PROJECT_ROOT}"/variables/_fonts.sh
