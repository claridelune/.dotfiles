#!/bin/bash

END_DATE="2024-03-30"

DAYS_LEFT=$(( ( $(date -d $END_DATE +%s) - $(date +%s) ) / 86400 ))

echo $DAYS_LEFT
