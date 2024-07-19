FROM debian:sid-slim
LABEL maintainer iceBear67 <icebear67@sfclub.cc>
WORKDIR /lagrange
ARG LGR_ARCH=linux-x64
COPY ./docker-entrypoint.sh /
RUN apt update && apt-get install -y curl jq unzip libicu72 \
  && curl https://api.github.com/repos/LagrangeDev/Lagrange.Core/releases | jq -r ".[0].assets.[].browser_download_url" | grep $LGR_ARCH | xargs curl -o lagrange.zip -L \
  && unzip lagrange.zip \
  && mv publish/Lagrange.OneBot /bin/ \
  && rmdir publish && rm lagrange.zip \
  && chmod +x /bin/Lagrange.OneBot \
  && chmod +x /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]
