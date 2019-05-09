FROM tensorflow/tensorflow:1.12.0-gpu-py3
RUN pip install bert-serving-server[http]
RUN apt-get update && apt-get install -y wget
COPY ./ /app
COPY ./docker/entrypoint.sh /app
WORKDIR /app
ENTRYPOINT ["/app/entrypoint.sh"]
CMD []

