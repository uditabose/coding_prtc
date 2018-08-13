### Commands and stuff


#### build application structure

```shell
mvn -B archetype:generate \
  -DarchetypeGroupId=org.apache.maven.archetypes \
  -DgroupId=learning.java.ent \
  -DartifactId=learning-ent
```

#### compile, build package
```shell
mvn compile
mvn clean package
```

#### jdeps
```shell
jdeps target/learning-ent-1.0-SNAPSHOT.jar 
```

#### Maven 
- [Introduction to the Build Lifecycle](https://maven.apache.org/guides/introduction/introduction-to-the-lifecycle.html)

- [Repositories](https://maven.apache.org/guides/introduction/introduction-to-repositories.html)