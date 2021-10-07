FROM python:alpine3.14

LABEL maintainer=tobias.jakobsson@elastx.se

ADD requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

ENTRYPOINT ["swift"]
CMD ["-h"]
