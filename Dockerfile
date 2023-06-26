FROM python:alpine3.18

ADD requirements.txt .
RUN apk add --no-cache build-base libffi-dev openssl-dev python3-dev curl krb5-dev linux-headers zeromq-dev -t build
RUN pip install --no-cache-dir -r requirements.txt
RUN apk del build

ENTRYPOINT ["swift"]
CMD ["-h"]
