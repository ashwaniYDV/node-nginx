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

### /etc/hosts
* The /etc/hosts file is a plain text file used to manually map domain names (hostnames) to their corresponding IP addresses, essentially acting as a local DNS resolver, allowing you to directly link a website address to its IP address without relying on a remote DNS server
* It's particularly useful for testing websites or when a DNS server is unavailable.
* https://unix.stackexchange.com/questions/421491/what-is-the-purpose-of-etc-hosts
* Its primary present-day use is to bypass DNS resolution. A match found in the /etc/hosts file will be used before any DNS entry. In fact, if the name searched (like localhost) is found in the file, no DNS resolution will be performed at all.
