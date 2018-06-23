tmp/aws-java-sdk.jar:
	cd $(shell mktemp -d) && \
		curl -O https://sdk-for-java.amazonwebservices.com/latest/aws-java-sdk.zip && \
		unzip aws-java-sdk.zip && \
		mkdir -p tmp && \
		cp aws-java-sdk-1.11.354/lib/aws-java-sdk-1.11.354.jar ./tmp/aws-java-sdk.jar

build: tmp/aws-java-sdk.jar
	docker build --squash -t sh19910711/zeppelin:0.7.3 .
