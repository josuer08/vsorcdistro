#!/bin/bash
cat $1 | grep -E "[sh]+[0-9]{1,3}:[sh]+[0-9]{1,3}" > $1_clean
cat $1 | grep -vE "[sh]+[0-9]{1,3}:[sh]+[0-9]{1,3}" > $1_dirt

