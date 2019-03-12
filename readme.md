# Networking Tools

[![DockerHub](https://img.shields.io/badge/DockerHub-pbillaut%2Fnet--tools-blue.svg?style=flat&logo=docker&logoColor=white)](https://hub.docker.com/r/pbillaut/net-tools)

Docker image based on Alpine Linux, containing common tools for network
analysis and debugging, like
* `curl`
* `dig`
* `drill`
* `nc`
* `nmap`

## cURL Stats

Run the following command to get statistics on a request:
```shell
curl-stat -L http://www.google.de
```

Example output:
```
# ==============================================================================
# Request
# ==============================================================================
Effective URL: http://www.google.com/
Redirect URL:  
HTTP Version:  1.1
Content-Type:  text/html; charset=ISO-8859-1
Scheme:        HTTP
Status Code:   200

# ==============================================================================
# Connection
# ==============================================================================
Source
  IP:   172.17.0.2
  Port: 49168
Destination
  IP:   172.217.168.196
  Port: 80

Connections:   2
Redirects:     1
SSL Verification
  Destination: 0
  Proxy:       0

# ==============================================================================
# Payload / Speed
# ==============================================================================
DL Size:      12390 B
UL Size:      0 B
Header Size:  1057 B
Request Size: 152 B

DL Speed:     62261.000 B/s
UL Speed:     0.000 B/s

# ==============================================================================
# Timing
# ==============================================================================
App Connect:    0.000000
Connection:     0.097241
Pre Transfer:   0.097396
Redirection:    0.102257
Start Transfer: 0.193246
DNS:            0.043323
------------------------
Total:          0.199614
```
