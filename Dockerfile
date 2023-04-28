FROM python:3.10

RUN pip install --no-cache-dir "best-of @ git+https://github.com/YDX-2147483647/best-of-generator.git@best-of-bits"

COPY ./resources/entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/bin/sh", "/entrypoint.sh"]
