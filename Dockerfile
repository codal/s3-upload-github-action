FROM python:3.8-alpine
RUN pip install --quiet --upgrade pip
RUN pip install --quiet --no-cache-dir awscli

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
