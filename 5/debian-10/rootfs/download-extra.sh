#!/bin/bash

# upload plugin on https://filebin.net/

curl -L -o /tmp/wp-automatic.zip https://filebin.net/pxmggslesogqfrl1/wp-automatic.zip
curl -o /tmp/featured-image-from-url.3.6.6.zip https://downloads.wordpress.org/plugin/featured-image-from-url.3.6.6.zip
curl -o /tmp/mh-magazine-lite.2.9.0.zip https://downloads.wordpress.org/theme/mh-magazine-lite.2.9.0.zip


unzip /tmp/featured-image-from-url.3.6.6.zip -d /opt/bitnami/wordpress/wp-content/plugins
unzip /tmp/wp-automatic.zip -d /opt/bitnami/wordpress/wp-content/plugins
unzip /tmp/mh-magazine-lite.2.9.0.zip -d /opt/bitnami/wordpress/wp-content/themes
