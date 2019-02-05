FROM python:3.4-alpine3.8

RUN apk add --update --virtual .build alpine-sdk libffi-dev openssl-dev libxml2-dev libxslt-dev linux-headers && \
    pip install ajenti-panel ajenti.plugin.dashboard ajenti.plugin.settings ajenti.plugin.plugins && \
    apk del .build
    
#RUN pip install --force-reinstall 'gevent<1.4,>=1.2'

ENTRYPOINT ["ajenti-panel","-v","--dev"]
