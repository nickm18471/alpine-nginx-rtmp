###############################################################################
# Alpine Linux Nginx RTMP Docker Container 
#
# nickmilleruk/alpine-nginx-rtmp
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

# Forward logs to Docker
RUN ln -sf /dev/stdout /var/log/nginx/access.log && \
    ln -sf /dev/stderr /var/log/nginx/error.log

EXPOSE 1935

CMD ["/usr/sbin/nginx"]