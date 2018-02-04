FROM matthieugouel/python-gunicorn-nginx:latest
MAINTAINER Matthieu Gouel <matthieu.gouel@gmail.com>

# Copy the package requirements
COPY requirements.txt /tmp/

# Install the package requirements
RUN pip install -U pip
RUN pip install -r /tmp/requirements.txt

# Set the environment package
ENV APP_ENVIRONMENT production

# Copy the application
COPY . /app
