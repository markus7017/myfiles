echo Update formatting
mvn spotless:apply
if [ $? -ne 0 ]
then
	exit
fi

echo Build Version 2
mvn clean install
if [ $? -ne 0 ]
then
	echo Build version 2 failed
	exit
fi
cp target/org.openhab.binding.shelly-2.5.*-SNAPSHOT.jar ~/Dev/myfiles/shelly/

echo Copy code to V3, update Shelly from v2 to v3
cd ~/Dev/openhab-3/git/openhab-addons/bundles/org.openhab.binding.shelly
cp ~/Dev/openhab-2-5-x/git/openhab-addons/bundles/org.openhab.binding.shelly/README.md .
rm -rf src/main/java/
mkdir src/main/java
cp -R ~/Dev/openhab-2-5-x/git/openhab-addons/bundles/org.openhab.binding.shelly/src/main/java/ src/main/java/
rm -rf src/main/resources/OH-INF/
mkdir src/main/resources/OH-INF
cp -R ~/Dev/openhab-2-5-x/git/openhab-addons/bundles/org.openhab.binding.shelly/src/main/resources/ESH-INF/ src/main/resources/OH-INF/
~/Dev/myfiles/convert_v2_v3.sh 
echo Build Version 3
mvn clean install
if [ $? -ne 0 ]
then
	echo Build version 3 failed
	exit
fi
cp target/org.openhab.binding.shelly-3.0.*-SNAPSHOT.jar ~/Dev/myfiles/shelly/

echo Pushing updates
cd ~/Dev/myfiles
./push.sh

cd ~/Dev/openhab-2-5-x/git/openhab-addons/bundles/org.openhab.binding.shelly
