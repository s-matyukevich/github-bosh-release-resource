FROM concourse/buildroot:git

RUN curl https://s3.amazonaws.com/bosh-cli-artifacts/bosh-cli-0.0.147-linux-amd64 -o /usr/bin/bosh
RUN chmod +x /usr/bin/bosh

ADD assets/ /opt/resource/
RUN chmod +x /opt/resource/*
