FROM docker.io/library/nginx:1.30.6-alpine3.24-slim@sha256:dede8895648b461178c3bc604f7eed4423efe5220b2c4d839f5eb3d34ac3f8f7 AS runtime
ARG SOURCE_REVISION
LABEL org.opencontainers.image.source="https://github.com/jtmb/jtmb-dev" \
      org.opencontainers.image.revision="$SOURCE_REVISION"
COPY nginx/default.conf /etc/nginx/conf.d/default.conf
COPY static-site/ /usr/share/nginx/html/
COPY package.json package-lock.json dependencies.provenance.json /usr/share/branconet-source/
RUN find /usr/share/nginx/html -type d -exec chmod 0755 {} + \
    && find /usr/share/nginx/html -type f -exec chmod 0644 {} + \
    && chmod 0644 /etc/nginx/conf.d/default.conf \
    && apk info -v > /usr/share/branconet-source/runtime-packages.txt \
    && nginx -t
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
