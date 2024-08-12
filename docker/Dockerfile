
# https://blog.stephenturner.us/p/r-package-development-in-positron
# pak::pak('exactextractr')
# pracpac::use_docker()
# pracpac::use_docker(build = FALSE, use_case = "pipeline")
# add the line to install a few additional system utilities using apt, and actually write this shell script. The pracpac package templated out everything else.
# build local docker file with 'hellow' tag
# docker build -t ttmmghmm/hellow:latest -t hellow:0.0.0.9000 ./docker
# docker run --rm ttmmghmm/hellow:latest
#   not docker build -f Dockerfile ./docker
# https://stackoverflow.com/questions/34434231/docker-how-to-authenticate-for-docker-push
# docker login --username=ttmmghmm
#  not docker login -u="${DOCKER_USERNAME}" -p="${DOCKER_PASSWORD}"
# docker push ttmmghmm/hellow:latest
# docker pull ttmmghmm/hellow:latest


# TODO: switch to rix

FROM rocker/r-ver:latest

## copy the renv.lock into the image
COPY renv.lock /renv.lock

## install renv
RUN Rscript -e 'install.packages(c("renv"))'

## set the renv path var to the renv lib
ENV RENV_PATHS_LIBRARY renv/library

## restore packages from renv.lock
RUN Rscript -e 'renv::restore(lockfile="/renv.lock", repos=NULL)'

## copy in built R package
COPY hellow_0.0.0.9001.tar.gz /hellow_0.0.0.9001.tar.gz

## run script to install built R package from source
RUN Rscript -e 'install.packages("/hellow_0.0.0.9001.tar.gz", type="source", repos=NULL)'


RUN apt-get update && apt-get install -y bsdmainutils translate-shell

COPY assets/run.sh /run.sh
COPY assets/pre.R /pre.R

CMD ["bash", "/run.sh"]
