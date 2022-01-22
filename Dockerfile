FROM alpine:3.11

#example usage some commands:
# docker build --build-arg app_username=$(APP_USERNAME) \
# 						 --build-arg app_db=$(APP_DB) \
#							 --build-arg app_password=$(APP_PASSWORD) \
#  						-t $(app_image_name) ./.

#example env and local var
# ARG app_username
# ENV APP_USERNAME=$app_username

ARG app_username
ARG app_db
ARG app_password

ENV APP_USERNAME=$app_username
ENV APP_DB=$app_db
ENV APP_PASSWORD=$app_password


WORKDIR /usr/src/app
#file to .
COPY requirements.txt .
#all files to .
COPY . .


RUN apk add --no-cache python3 py3-pip \
		&& pip3 install --upgrade pip \
		&& pip3 install --no-cache-dir -r /usr/src/app/requirements.txt

EXPOSE 5000
CMD ["python3", "run.py"]