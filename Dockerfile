# mssql-server-docker-backup
# Maintainers: ShadowLaurus on GitHub
# GitRepo: https://github.com/ShadowLaurus/MsSql-Docker-Backup

FROM microsoft/mssql-server-linux:latest

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Bundle app source
COPY . /usr/src/app

# Grant permissions for the import-data script to be executable
RUN chmod +x /usr/src/app/entrypoint.sh

CMD /bin/bash ./entrypoint.sh