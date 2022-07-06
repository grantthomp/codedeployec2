#!/bin/bash
rm -r /usr/share/nginx/html/index.html
touch /usr/share/nginx/html/index.html
echo '<html><h1>Bootstrap Demo</h1><h3>Availability Zone: ' > /usr/share/nginx/html/index.html
curl http://169.254.169.254/latest/meta-data/placement/availability-zone >> /usr/share/nginx/html/index.html
echo '</h3> <h3>Instance Id: ' >> /usr/share/nginx/html/index.html
curl http://169.254.169.254/latest/meta-data/instance-id >> /usr/share/nginx/html/index.html
echo '</h3> <h3>Public IP: ' >> /usr/share/nginx/html/index.html
curl http://169.254.169.254/latest/meta-data/public-ipv4 >> /usr/share/nginx/html/index.html
echo '</h3> <h3>Local IP: ' >> /usr/share/nginx/html/index.html
curl http://169.254.169.254/latest/meta-data/local-ipv4 >> /usr/share/nginx/html/index.html
echo '</h3></html> ' >> /usr/share/nginx/html/index.html
