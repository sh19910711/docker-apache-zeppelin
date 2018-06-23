FROM apache/zeppelin:0.7.3

RUN rm lib/aws-java-*
ADD tmp/aws-java-sdk.jar lib/
