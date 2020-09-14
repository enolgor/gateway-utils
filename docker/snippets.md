Compile with docker:
```
docker run --rm -it -v "$(pwd):/src" -w "/src/dev-workspace" maven:3.6.3-adoptopenjdk-8 mvn clean package
```
Mount "$HOME/.m2:/root/.m2" to use local maven settings/cache
