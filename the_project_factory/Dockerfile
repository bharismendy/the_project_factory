 FROM python:3.6
 ENV PYTHONUNBUFFERED 1
 RUN mkdir /poopi
 WORKDIR /poopi
 ADD . /poopi
 COPY entrypoint.sh /entrypoint.sh
 COPY db_dump.json /db_dump.json
 RUN chmod +x /entrypoint.sh
 RUN pip install -r requirement.txt