find . -name *.java -exec sed -i '' -e "s/org.eclipse.smarthome.core/org.openhab.core/g" {} \;
find . -name *.java -exec sed -i '' -e "s/org.eclipse.smarthome/org.openhab.core/g" {} \;
mvn spotless:apply
