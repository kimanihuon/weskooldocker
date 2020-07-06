#!/bin/bash

# chmod +x envs.sh
# Run with source envs.sh

ENV="production"
JWT=""
CERTKEY="/etc/letsencrypt/live/weskool.team/<PRIVATE KEY NAME>"
CERTCHAIN="/etc/letsencrypt/live/weskool.team/<PUBLIC KEY NAME>"
user=""
password=""
email=""
project="weskool"
sqlurl="mysql://root:${password}@127.0.0.1/${project}"

# Email
export USER_EMAIL="${email}"

# Project Name
export PROJECT_NAME="${project}"

# Dev or Prod
export ENV="${ENV}"

# JWT key
export JWT="${jwt}"

# Certificates
export CERTKEY="${CERTKEY}"
export CERTCHAIN="${CERTCHAIN}"

# Mongo credentials
export MONGO_INITDB_ROOT_USERNAME="${user}"
export MONGO_INITDB_ROOT_PASSWORD="${password}"

# Mongo express credentials
export ME_CONFIG_MONGODB_ADMINUSERNAME="${user}"
export ME_CONFIG_MONGODB_ADMINPASSWORD="${password}"

# Sql credentials
export MYSQL_USER="${user}"
export MYSQL_ROOT_PASSWORD="${password}"
export MYSQL_DATABASE="${project}"

# Sequelize database url
export DATABASE_URL="${sqlurl}"

echo "Project Name: ${PROJECT_NAME}"
echo "Mode: ${ENV}"
echo "Jwt: ${JWT}"
echo "CERTKEY: ${CERTKEY}"
echo "CERTCHAIN: ${CERTCHAIN}"
echo "Mongo User: ${MONGO_INITDB_ROOT_USERNAME}"
echo "Mongo Pass: ${MONGO_INITDB_ROOT_PASSWORD}"
echo "Mongo Express User: ${ME_CONFIG_MONGODB_ADMINUSERNAME}"
echo "Mongo Express Password: ${ME_CONFIG_MONGODB_ADMINPASSWORD}"
echo "Mariadb root password: ${MYSQL_ROOT_PASSWORD}"
echo "SQL url: ${DATABASE_URL}"
echo "SQL User: ${MYSQL_USER}"
echo "SQL Database: ${MYSQL_DATABASE}"
echo "USER Email: ${USER_EMAIL}"




