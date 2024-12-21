## call your backend app locally as http://myapp.com/api instead of http://localhost:3000/api

### Notes
* 127.0.0.1 myapp.com
* After adding above line to /etc/hosts, your Node.js app is accessible at http://myapp.com:3000/api.
* To remove the port :3000 from the URL, you can use a reverse proxy like NGINX or Apache.
* Here's a fully dockerised example using NGINX as a reverse proxy.

### Steps
Modify your hosts file to point myapp.com to localhost. \
Add myapp.com to /etc/hosts
```
127.0.0.1 myapp.com
```

Build and run the containers:
```
docker-compose up -d
```
