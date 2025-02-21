#!/bin/bash

# shellcheck disable=SC1091

set -o errexit
set -o nounset
set -o pipefail
# set -o xtrace # Uncomment this line for debugging purpose

# Load WordPress environment
. /opt/bitnami/scripts/wordpress-env.sh

# Load libraries
. /opt/bitnami/scripts/libbitnami.sh
. /opt/bitnami/scripts/liblog.sh
. /opt/bitnami/scripts/libwebserver.sh

print_welcome_page

if [[ "$1" = "/opt/bitnami/scripts/$(web_server_type)/run.sh" || "$1" = "/opt/bitnami/scripts/nginx-php-fpm/run.sh" ]]; then
    info "** Starting WordPress setup **"
    /opt/bitnami/scripts/"$(web_server_type)"/setup.sh
    /opt/bitnami/scripts/php/setup.sh
    /opt/bitnami/scripts/mysql-client/setup.sh
    /opt/bitnami/scripts/wordpress/setup.sh
    /opt/bitnami/wp-cli/bin/wp plugin activate featured-image-from-url
    /opt/bitnami/wp-cli/bin/wp plugin activate wp-automatic
    /opt/bitnami/wp-cli/bin/wp theme activate metro-magazine
    /post-init.sh
    info "** WordPress setup finished! **"
fi

echo ""
exec "$@"
