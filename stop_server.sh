#!/bin/bash

DOMAIN_HOME="/u01/oracle/domains/base_domain"

echo "🛑 Deteniendo AdminServer..."

PID=$(ps -ef | grep '[j]ava.*weblogic.Server' | awk '{print $2}')

if [ -z "$PID" ]; then
  echo "No hay proceso WebLogic corriendo."
else
  kill -15 $PID
  echo "Esperando terminación..."
  sleep 5
  if ps -p $PID > /dev/null; then
    kill -9 $PID
    echo "Se forzó la terminación del proceso."
  else
    echo "Servidor detenido correctamente."
  fi
fi
