FROM python:3.8-alpine
RUN apk update && \
    apk upgrade && \
    apk add --no-cache --virtual build-deps build-base gcc bash freetype-dev libpng-dev openblas-dev nodejs npm

RUN pip install awscli aws-sam-cli 

copy entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
