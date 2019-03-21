# Snippets

## Update versions

  - Add all submodules in repos folder
  - Update pom.xml in repos folder and add modules
  - Execute: `mvn org.codehaus.mojo:versions-maven-plugin:2.2:set -DnewVersion=1.5.0a   -DartifactId=*  -DgroupId=*`
  
## Javadocs

Execute in src folder. Configuration is in parent pom.

```
mvn clean javadoc:aggregate -pl \
:parent,\
core,\
core/common,\
core/common/commons,\
core/physical,\
core/physical/commons-physical,\
core/virtual,\
core/virtual/commons-virtual
```

## Licenses

  - Add license header: `mvn -q com.mycila:license-maven-plugin:3.0:format -f <path_to_module>/pom.xml -Dlicensefile=<path_to_license_header>/license-header.txt`
  - Generate notice:
    - Modify licenses/NOTICE-template.ftl if needed (module name)
    - Modify licenses/license-merges.txt if needed
    - Change licenses/pom.xml and add the path to the project to inspect as maven module
    - Execute: `mvn generate-resources -q -f licenses/pom.xml`