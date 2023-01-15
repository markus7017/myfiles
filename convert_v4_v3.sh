
find . -name *.java -exec sed -i '' -e "s/2010-2023/2010-2022/g" {} \;
mvn spotless:apply
