FROM openjdk-17-jdk-slim 
WORKDIR /app
COPY . /app
RUN javac hello.java
CMD ["java","hello"]
