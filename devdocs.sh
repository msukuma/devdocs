#!/bin/bash
res=$(ps aux | grep devdocs | wc -l)
if [ $res -lt 2 ]
then
  echo "Devdocs Server Already Running"
else
  bundle exec rackup
  echo "Devdocs Server Started"
fi