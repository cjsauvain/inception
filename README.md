# Inception

> Projet réalisé dans le cadre du cursus de l’école 42.  

## 📌 Objectifs

> L’objectif est de concevoir une **infrastructure de services Dockerisés** avec Docker Compose.

## 🧱 Services à mettre en place

| Service     | Description                                                        |
|-------------|--------------------------------------------------------------------|
| **Nginx**   | Serveur proxy inverse, HTTPS via certificat TLS                    |
| **WordPress** | Application web CMS, servie via PHP-FPM                          |
| **MariaDB** | Base de données MySQL-compatible                                   |

## ⚙️ Technologies utilisées

- Docker (Dockerfile)
- Docker Compose
- Debian Linux (images légères)
- Nginx, WordPress, MariaDB
- OpenSSL (certificats TLS)
- Volumes Docker
- Réseaux bridge

## 🛠️ Setup

```bash
git clone https://github.com/cjsauvain/inception.git
cd inception
make
```
    
Open your web browser and visit `http://localhost:9000`.
