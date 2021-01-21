find . -name *.java -exec sed -i '' -e "s/SmartHomeUnits.PERCENT/Units.PERCENT/g" {} \;
find . -name *.java -exec sed -i '' -e "s/SmartHomeUnits.WATT/Units.WATT/g" {} \;
find . -name *.java -exec sed -i '' -e "s/SmartHomeUnits.LITRE/Units.LITRE/g" {} \;
find . -name *.java -exec sed -i '' -e "s/SmartHomeUnits.AMPERE/Units.AMPERE/g" {} \;
find . -name *.java -exec sed -i '' -e "s/SmartHomeUnits.KILOWATT_HOUR/Units.KILOWATT_HOUR/g" {} \;
find . -name *.java -exec sed -i '' -e "s/org.eclipse.smarthome.core.library.unit.SmartHomeUnits/org.openhab.core.library.unit.Units/g" {} \;
find . -name *.java -exec sed -i '' -e "s/tec.uom.se.unit.Units/org.openhab.core.library.unit.Units/g" {} \;
find . -name *.java -exec sed -i '' -e "s/, SmartHomeUnits/, Units/g" {} \;
find . -name *.java -exec sed -i '' -e "s/org.eclipse.smarthome.core/org.openhab.core/g" {} \;
find . -name *.java -exec sed -i '' -e "s/org.eclipse.smarthome/org.openhab.core/g" {} \;
find . -name *.java -exec sed -i '' -e "s/2010-2020/2010-2021/g" {} \;

mvn spotless:apply
