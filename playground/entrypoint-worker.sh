#!/usr/bin/env bash

# while IFS='' read -r line || [[ -n "$line" ]]; do line=$(echo $line | sed -e "s/=/='/"); echo export ${line}\' >> $HOME/.env; done < <(env)

cd $APPLICATION_ROOT\cpoc_web
celery -A cpoc_web worker -l info -Q ${WORKER_QUEUE} -n ${WORKER_NAME}
