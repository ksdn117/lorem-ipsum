#!/bin/bash

articles=()
index=0
IFS=$'\n';for i in `cat paragraph.txt`;do
  articles[index]+=${i}
  let index++
done

article=${articles[$((RANDOM%${#articles[*]}))]}

echo "<!DOCTYPE html> \
        <html lang="ja"> \
        <meta charset="utf-8"> \
        <title>Lorem Ipsum</title> \
        </head> \
        <body> \
        <div align="center"> \
        <h1>Lorem Ipsum</h1> \
        <p>${article}</p>
        </div> \
        </body> \
        </html>" \
        > /usr/share/nginx/html/index.html

chmod 644 /usr/share/nginx/html/index.html

# /bin/bash -c "envsubst < /etc/nginx/conf.d/mysite.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"
/bin/bash -c "nginx -g 'daemon off;'"






        # <style type="text/css"> \
        #   body { \
        #     width: 100%; \
        #     min-height: 100%; \
        #     background: linear-gradient(to bottom,#fff 0,#b8edff 50%,#83dfff 100%); \
        #     background-attachment: fixed; \
        #   } \
        # </style> \

        # <img src="./docker.png" alt="docker logo"> \
