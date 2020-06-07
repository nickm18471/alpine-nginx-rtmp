###############################################################################
# Alpine Linux Nginx RTMP Docker Container / uknickm/alpine-nginx-rtmp
#
# Inspired by tiangolo/nginx-rtmp-docker licesnsed under MIT.
# 
# @copyright Copyright (c) 2020 Nicholas Miller.
# @license Please see 
# @version 1.0.0
#
###############################################################################

FROM alpine:edge

RUN apk --no-cache upgrade \
    && apk --no-cache add coreutils bash nginx nginx-mod-rtmp

COPY /etc/nginx/nginx.conf /etc/nginx/nginx.conf

EXPOSE 1935

#CMD ["nginx", "-g", "daemon off;"]