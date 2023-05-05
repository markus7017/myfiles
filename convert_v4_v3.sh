find . -name *.java -exec sed -i '' -e "s/2010-2023/2010-2022/g" {} \;
LC_CTYPE=C find . -name "*.properties" -exec sed -i '' -e 's/addon\.shelly/binding\.shelly/g' {} \;
mvn spotless:apply
