FROM rocker/r-base

# install R packages
RUN install2.r \
   plumber

EXPOSE 8000

ADD . /app
WORKDIR /app

CMD R -e "source('start_api.R')"