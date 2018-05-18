FROM python:2.7.15-alpine3.7

LABEL maintainer=tobias.jakobsson@elastx.se

ADD requirements.txt .

RUN apk add --virtual .build-deps build-base linux-headers --update \
 && pip install --no-cache-dir -r requirements.txt \
 && apk del .build-deps

CMD ["swift"]
