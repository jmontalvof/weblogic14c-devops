#!/bin/bash

DOMAIN_HOME="/u01/oracle/domains/base_domain"
export DOMAIN_HOME

echo "🚀 Arrancando AdminServer..."

cd "$DOMAIN_HOME/bin" || exit
nohup ./startWebLogic.sh > "$DOMAIN_HOME/adminserver.log" 2>&1 &

echo "✅ WebLogic arrancando en segundo plano. Logs en adminserver.log."
