find . -name *.java -exec sed -i '' -e "s/SmartHomeUnits.PERCENT/Units.PERCENT/g" {} \;
find . -name *.java -exec sed -i '' -e "s/org.eclipse.smarthome.core.library.unit.SmartHomeUnits/org.openhab.core.library.unit.Units/g" {} \;
find . -name *.java -exec sed -i '' -e "s/, SmartHomeUnits/, Units/g" {} \;
find . -name *.java -exec sed -i '' -e "s/org.eclipse.smarthome.core/org.openhab.core/g" {} \;
find . -name *.java -exec sed -i '' -e "s/org.eclipse.smarthome/org.openhab.core/g" {} \;
mvn spotless:apply
