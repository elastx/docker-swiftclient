FROM python:2.7.15-alpine3.7

LABEL maintainer=tobias.jakobsson@elastx.se

ADD requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

ENTRYPOINT ["swift"]
CMD ["-h"]
