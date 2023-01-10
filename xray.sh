#!/bin/sh
if [ ! -f UUID ]; then
  UUID="3e572f9d-bbb3-49ab-a4c2-513f4afaed06"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

