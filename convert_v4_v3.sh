find . -name *.java -exec sed -i '' -e "s/2010-2023/2010-2022/g" {} \;
find . -name *.properties -exec sed -i '' -e "s/addon.shelly./binding.shelly./g" {} \;
mvn spotless:apply
