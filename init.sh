sudo rm -r /etc/nginx/sites-enabled/default
sudo ln -s /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
sudo ln -sf /home/box/web/etc/hello.py /etc/gunicorn.d/hello.py
sudo gunicorn -b 0.0.0.0:8080 hello:app &
sudo gunicorn -b 0.0.0.0:8000 /home/box/web/ask ask.wsgi:application & 
