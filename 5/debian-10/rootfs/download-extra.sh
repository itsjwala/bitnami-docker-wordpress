#!/bin/bash

# upload plugin on https://filebin.net/

curl -L -o /tmp/wp-automatic.zip https://filebin.net/xkam31sp3f3vlyqy/wp-automatic.zip
curl -o /tmp/featured-image-from-url.3.6.6.zip https://downloads.wordpress.org/plugin/featured-image-from-url.3.6.6.zip
curl -o /tmp/metro-magazine.1.3.6.zip https://downloads.wordpress.org/theme/metro-magazine.1.3.6.zip


unzip /tmp/featured-image-from-url.3.6.6.zip -d /opt/bitnami/wordpress/wp-content/plugins
unzip /tmp/wp-automatic.zip -d /opt/bitnami/wordpress/wp-content/plugins
unzip /tmp/metro-magazine.1.3.6.zip -d /opt/bitnami/wordpress/wp-content/themes
