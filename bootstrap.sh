sudo apt-get update && sudo apt-get install -y python3-pip
pip3 install pipenv
PATH=$PATH:/home/$USER/.local/bin
pipenv --version
pip3 install python-dotenv
sudo mkdir -p /var/www/app
sudo chown -R $USER:www-data /var/www/app
sudo chmod -R 775 /var/www/app
cd /var/www/app
touch .env
sudo nano .env
pipenv shell
pipenv install flask gunicorn
touch application.py wsgi.py
sudo nano application.py
sudo nano wsgi.py
flask run --host '0.0.0.0'
gunicorn --workers 4 --bind 0.0.0.0:5000 wsgi:app
which gunicorn
#/home/vagrant/.local/share/virtualenvs/web-python-_yLKVanR/bin/gunicorn
sudo systemctl start nginx
sudo systemctl status nginx
cd /etc/systemd/system
sudo touch flask_app.service
sudo systemctl daemon-reload
systemctl enable flask_app
systemctl start flask_app
cd /etc/nginx/sites-available
sudo nano app.conf
sudo ln -s /etc/nginx/sites-available/app.conf /etc/nginx/sites-enabled/
ls -l /etc/nginx/sites-enabled/ | grep app.conf
sudo nginx -t
sudo systemctl restart nginx
sudo systemctl status nginx
cd /var/www
git clone https://github.com/Azure-Samples/msdocs-python-flask-webapp-quickstart
pipenv install -r requirements.txt
gunicorn --workers 4 --bind 0.0.0.0:5000 wsgi:app