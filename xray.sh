#!/bin/sh
if [ ! -f UUID ]; then
  UUID="9f7a509d-aea9-4f4c-8fe5-d014086bd083"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

