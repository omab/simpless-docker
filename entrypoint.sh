#!/bin/sh

if [ "$SIMPLESS_WATCH" = "yes" ]; then
    simpless -w -c $SIMPLESS_CONF -t $SIMPLESS_TARGET
else
    simpless -c $SIMPLESS_CONF -t $SIMPLESS_TARGET
fi
