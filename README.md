# Inception  
## <p style="color:red;">Infrastructure Setup with Nginx, MariaDB, and WordPress  </p>

This repository contains the setup of a simple infrastructure using **Docker** to deploy **Nginx**, **MariaDB**, and **WordPress**.  

---

## Project Objective
The goal of this project is to set up a **web infrastructure** using the following services (one container for each service) :
- **Nginx** as the web server
- **MariaDB** as the database server
- **WordPress** as the content management system (CMS)

The containers are configured to communicate with each other using **Docker networks**.

---

## 🛠️ Setup

```bash
git clone https://github.com/cjsauvain/inception.git
cd inception
make
```
    
Open your web browser and visit `http://localhost:9000`.
