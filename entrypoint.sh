#!/bin/ash

#cp -R -u /cache/node_modules /api/node_modules
ln -s /cache/node_modules /api/node_modules
exec npm run start:dev
