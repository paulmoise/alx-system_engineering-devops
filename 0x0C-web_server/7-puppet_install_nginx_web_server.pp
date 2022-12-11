<<<<<<< HEAD
# Installs a Nginx server

exec {'install':
  provider => shell,
  command  => 'sudo apt-get -y update ; sudo apt-get -y install nginx ; echo "Hello World!" | sudo tee /var/www/html/index.nginx-debian.html ; sudo sed -i "s/server_name _;/server_name _;\n\trewrite ^\/redirect_me https:\/\/github.com\/Tolulope05 permanent;/" /etc/nginx/sites-available/default ; sudo service nginx start',
=======
# installs and configs nginx server

package { 'nginx':
  ensure => 'installed',
}

file { 'index.nginx-debian.html':
  path    => '/var/www/html/index.nginx-debian.html',
  content => 'Hello World!',
}

exec { 'config':
  command  => 'sed -i "s/server_name _;/server_name _;\n\trewrite ^\/redirect_me https:\/\/www.youtube.com/watch?v=TfgBHC5gvTI permanent;/" /etc/nginx/sites-available/default',
  provider => 'shell',
}
exec { 'start':
  command  => 'sudo service nginx restart',
  provider => 'shell',
>>>>>>> server config
}
