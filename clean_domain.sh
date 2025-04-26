#!/bin/bash

DOMAIN_HOME="/u01/oracle/domains/base_domain"

echo "🧹 Limpiando dominio WebLogic..."

find "$DOMAIN_HOME" -name "*.lok" -exec rm -f {} \;
rm -rf "$DOMAIN_HOME"/servers/AdminServer/tmp/*
rm -rf "$DOMAIN_HOME"/servers/AdminServer/cache/*
rm -rf "$DOMAIN_HOME"/servers/AdminServer/logs/*

echo "✅ Limpieza completada."
