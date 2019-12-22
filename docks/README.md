sudo docker build -t djtest .  
sudo docker run -p 7999:8000 -it djtest bash  
docker>> python3 manage.py runserver 0.0.0.0:8000