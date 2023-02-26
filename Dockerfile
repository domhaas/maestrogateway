ARG BUILD_FROM
FROM $BUILD_FROM

RUN apk add --no-cache \
    py3-pip

COPY ./requirements.txt /requirements.txt
RUN pip3 install -r /requirements.txt && rm requirements.txt

COPY ./*.py ./maestro/

COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]