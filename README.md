# mssql-docker-backup
script to backup all database on mssql server database on docker

## Environment variables
- MSSQL_HOST is the IP address of the sql server instance
- SA_PASSWORD is the database system administrator (userid = 'sa') password used to connect to SQL Server once the container is running.

# Frequently asked questions 
---
- **How do I map a volume using Docker for Windows?** Make sure to enable [shared drives in the settings menu](https://docs.docker.com/docker-for-windows/#shared-drives). After that, you can map a volume specifying the **Windows path:Linux path**. The following is an example of a command to map a Windows folder to the data directory in the container:

> ``docker run -e 'MSSQL_HOST=192.168.1.10' -e 'SA_PASSWORD=yourStrong(!)Password' -v C:\MyWindowsVolume:/backups -d shadowlaurus/mssql-docker-backup``
