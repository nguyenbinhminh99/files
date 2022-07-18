#!/usr/bin/env bash

EMAIL_SENDER="minhmocmeo0@gmail.com"
GOOGLE_APP_PASSWORD="ukywrtsspkvrdwwm"
EMAIL_RECEIVER="minhmocmeo0@gmail.com"
SUBJECT="Play De"
BODY="Danh de di sap 6:30 roi"
        curl -s --url 'smtps://smtp.gmail.com:465' --ssl-reqd \
        --mail-from $EMAIL_SENDER \
        --mail-rcpt $EMAIL_RECEIVER \
        --user $EMAIL_SENDER:$GOOGLE_APP_PASSWORD \
        -T <(echo -e "From: Anonymous
To: $EMAIL_RECEIVER
Subject: $SUBJECT

  $BODY")

# file /tmp/crontab.[random_string]/crontab
# 9:00AM UTC = 4:00PM GMT+7
#0 9 * * * /home/Documents/danhde.sh
