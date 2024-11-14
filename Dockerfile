# pull official base image
FROM python:3.11.4-slim-buster
RUN apt-get update && apt-get install -y sqlite3 libsqlite3-dev


# set work directory
WORKDIR /home/app

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install dependencies
RUN pip install --upgrade pip
COPY ./requirements.txt .
RUN pip install -r requirements.txt

# copy project
COPY ./demo /home/app

# copy entrypoint.sh
COPY ./entrypoint.sh /home/app/entrypoint.sh

# give execute permissions to entrypoint.sh
RUN chmod +x /home/app/entrypoint.sh

# run entrypoint.sh
CMD ["/home/app/entrypoint.sh"]