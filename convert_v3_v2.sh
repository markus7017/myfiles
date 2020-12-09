find . -name *.java -exec sed -i '' -e "s/org.openhab.core.thing./org.eclipse.smarthome.core.thing./g" {} \;
find . -name *.java -exec sed -i '' -e "s/org.openhab.core.i18n./org.eclipse.smarthome.core.i18n./g" {} \;
find . -name *.java -exec sed -i '' -e "s/org.openhab.core.library.unit./org.eclipse.smarthome.core.library.unit./g" {} \;
find . -name *.java -exec sed -i '' -e "s/org.openhab.core.library.types./org.eclipse.smarthome.core.library.types./g" {} \;
find . -name *.java -exec sed -i '' -e "s/org.openhab.core.types./org.eclipse.smarthome.core.types./g" {} \;
find . -name *.java -exec sed -i '' -e "s/org.openhab.core.net./org.eclipse.smarthome.core.net./g" {} \;
find . -name *.java -exec sed -i '' -e "s/org.openhab.core.config.discovery./org.eclipse.smarthome.config.discovery./g" {} \;
find . -name *.java -exec sed -i '' -e "s/org.openhab.core.io.net.http.HttpClientFactory/org.eclipse.smarthome.io.net.http.HttpClientFactory/g" {} \;
find . -name *.java -exec sed -i '' -e "s/org.openhab.core.library.unit.Units/org.openhab.core.library.unit.SmartHomeUnits/g" {} \;
mvn spotless:apply

