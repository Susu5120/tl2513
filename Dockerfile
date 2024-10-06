FROM python:3.10.15-bullseye
EXPOSE 4200
WORKDIR /app
COPY app/* /app/

RUN chmod +x /app/build.sh &&\
     bash /app/build.sh &&\
     rm -rf /app/build.sh

CMD ["bash","/app/start.sh"]