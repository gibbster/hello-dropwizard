FROM java:7

ADD target/hello-world-0.0.1-SNAPSHOT.jar /data/app.jar

ADD hello-world.yml /data/hello-world.yml

CMD java -jar /data/app.jar server /data/hello-world.yml

ENV DEFAULT_NAME=Stranger

EXPOSE 8888
