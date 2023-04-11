FROM python:3.8

RUN pip install --no-cache-dir "best-of @ git+https://github.com/best-of-lists/best-of-generator.git@4e07c02a36d964c28ceab6de53c74be84a633286"

COPY ./resources/entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/bin/sh", "/entrypoint.sh"]
