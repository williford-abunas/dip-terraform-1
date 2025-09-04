#!/bin/bash
yum install nginx -y
echo "<html>
  <body>
    <h1>Yelloow! Is it me ur looking for?!</h1>
    <h3>You are viewing this app on private instance ${instance_id}</h3>
  </body>
</html>" > /usr/share/nginx/html/index.html
systemctl start nginx