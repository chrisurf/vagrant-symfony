#!/bin/bash
# Seed Laravel Database
# IMPORTANT: Check Admin User Role
# Chris Oguntolu - 15/Apr/2021
echo Laravel database migration
cd /var/www/html/symfony
yarn install && yarn run dev
