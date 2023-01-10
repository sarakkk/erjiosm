#!/bin/sh
if [ ! -f UUID ]; then
  UUID="132f49b7-02fa-422c-ae2f-fc92d39593fd"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

