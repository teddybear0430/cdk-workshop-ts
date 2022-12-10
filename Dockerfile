FROM alpine:3.14

# aws cliの最新バージョンがpythonの3系が必要なので、Python3のインストールを行う

# 参考: https://gist.github.com/gmoon/3800dd80498d242c4c6137860fe410fd
RUN apk -v --no-cache --update add \
  musl-dev \
  gcc \
  python3 \
  python3-dev
RUN python3 -m ensurepip --upgrade \
  && pip3 install --upgrade pip

# awscliをインストール
RUN pip3 install --upgrade awscli

# awscliをインストールしたら、pip含めて不要なライブラリは消す
RUN pip3 uninstall --yes pip \
  && apk del python3-dev gcc musl-dev

# CDKをTypeScriptで使用するので、Node.jsのインストール
RUN apk add --update nodejs npm && \
  rm -rf /var/cache/apk/*

# cdkをインストール
RUN npm install -g aws-cdk

WORKDIR /app
