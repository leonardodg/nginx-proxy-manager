# NGINX Proxy Manager
![Image](https://camo.githubusercontent.com/a0d453df6c842b098350e3d6bd0a739e7e53b093d51ddfee820b38d42b4382fc/68747470733a2f2f6e67696e7870726f78796d616e616765722e636f6d2f6769746875622e706e67)

A simple, powerful interface to manage NGINX proxy hosts with a web-based UI.

- **Docker Image:** [jc21/nginx-proxy-manager](https://hub.docker.com/r/jc21/nginx-proxy-manager)
- **Documentation:** [nginxproxymanager.com](https://nginxproxymanager.com/)
- **GitHub:** [NginxProxyManager/nginx-proxy-manager](https://github.com/NginxProxyManager/nginx-proxy-manager)

---

## Objective

This project aims to provide an easy way to deploy and manage NGINX reverse proxies using a user-friendly web interface.

![Image](https://github.com/user-attachments/assets/460bae9e-36cf-4835-bf45-f04449c5c923)

## Prerequisites

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/)

## Setup

1. **Clone this repository:**
    ```sh
    git clone https://github.com/leonardodg/nginx-proxy-manager
    cd nginx-proxy-manager
    ```

2. **Start the services:**
    ```sh
    docker compose up -d
    ```

3. **Access the Web UI:**
    - Open [http://127.0.0.1:81](http://127.0.0.1:81) in your browser.

## Default Administrator Login

- **Email:** `admin@example.com`
- **Password:** `changeme`

## Custom Administrator Credentials

You can set a custom admin email and password using environment variables:

```env
INITIAL_ADMIN_EMAIL=my@example.com
INITIAL_ADMIN_PASSWORD=mypassword1
```

Set these in your `.env` file or pass them as environment variables to Docker Compose.

---

## Learn More

- [Official Documentation](https://nginxproxymanager.com/)
- [GitHub Repository](https://github.com/NginxProxyManager/nginx-proxy-manager)

---