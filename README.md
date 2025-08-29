# Nextcloud on DigitalOcean App Platform

This repository contains the Docker configuration for deploying Nextcloud on DigitalOcean App Platform.

## Features

- Nextcloud 29 (latest stable)
- Apache web server
- PHP 8.3
- PostgreSQL database support
- Redis caching support
- 10GB file upload limit
- 1GB PHP memory limit

## Deployment

This application is configured to deploy automatically to DigitalOcean App Platform when changes are pushed to the main branch.

## Configuration

Environment variables are managed through DigitalOcean App Platform:

- Database connection (PostgreSQL)
- Redis cache connection
- Admin credentials
- Trusted domains

## URL

https://cloud.motionmavericks.com.au