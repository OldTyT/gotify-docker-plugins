#!/bin/sh
echo "Start with custom entrypoint."
test -d $GOTIFY_PLUGINSDIR || mkdir $GOTIFY_PLUGINSDIR
for plugin in $GOTIFY_PLUGINS; do
    echo "Installing plugin $plugin"
    curl -L -O --output-dir $GOTIFY_PLUGINSDIR $plugin
done
/app/gotify-app
