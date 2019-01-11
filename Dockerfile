FROM node:10.15-alpine

ENV PATH /root/.yarn/bin:$PATH

RUN apk update \
    && apk add curl git bash binutils tar \
    && rm -rf /var/cache/apk/* \
    && /bin/bash \
    && touch ~/.bashrc \
    && curl -o- -L https://yarnpkg.com/install.sh | bash
RUN yarn global add @vue/cli

WORKDIR /app

CMD ["/bin/bash"]
