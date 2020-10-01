#!/bin/sh -l
pwd
env
echo "Hello $1"
time=$(date)
echo "::set-output name=time::$time"
