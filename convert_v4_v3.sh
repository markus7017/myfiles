find . -name *.java -exec sed -i '' -e "s/2010-2023/2010-2022/g" {} \;
find . -name *.java -exec sed -i '' -e "s/return quantityCommand.toBigDecimal().doubleValue();/return ((QuantityType<?>) value).toBigDecimal().doubleValue();/g" {} \;
find . -name *.java -exec sed -i '' -e "s/return ((DecimalType) command).doubleValue();/return ((DecimalType) value).doubleValue();/g" {} \;
find . -name *.java -exec sed -i '' -e "s/command instanceof Number numberCommand/command instanceof Number/g" {} \;
find . -name *.java -exec sed -i '' -e "s/command instanceof DecimalType decimalCommand/command instanceof DecimalType/g" {} \;
find . -name *.java -exec sed -i '' -e "s/value instanceof DecimalType decimalCommand/value instanceof DecimalType/g" {} \;
find . -name *.java -exec sed -i '' -e "s/command instanceof PercentType percentCommand/command instanceof PercentType/g" {} \;
find . -name *.java -exec sed -i '' -e "s/command instanceof OnOffType onOffCommand/command instanceof OnOffType/g" {} \;
find . -name *.java -exec sed -i '' -e "s/command instanceof IncreaseDecreaseType increaseDecreaseCommand/command instanceof IncreaseDecreaseType/g" {} \;
find . -name *.java -exec sed -i '' -e "s/command instanceof QuantityType<?> quantityCommand/command instanceof QuantityType<?>/g" {} \;
find . -name *.java -exec sed -i '' -e "s/value instanceof QuantityType<?> quantityCommand/value instanceof QuantityType<?>/g" {} \;
find . -name *.java -exec sed -i '' -e "s/value instanceof String stringValue/value instanceof String/g" {} \;
find . -name *.java -exec sed -i '' -e "s/instanceof ShellyBaseHandler shellyBaseHandler/instanceof ShellyBaseHandler/g" {} \;
find . -name *.java -exec sed -i '' -e "s/state instanceof DateTimeType dateTimeState/state instanceof DateTimeType/g" {} \;
find . -name *.java -exec sed -i '' -e "s/if (command instanceof HSBType hsb) {/if (command instanceof HSBType) {HSBType hsb=((HSBType) command);/g" {} \;
find . -name *.java -exec sed -i '' -e "s/numberCommand/((Number) command)/g" {} \;
find . -name *.java -exec sed -i '' -e "s/decimalCommand/((DecimalType) command)/g" {} \;
find . -name *.java -exec sed -i '' -e "s/percentCommand/((PercentType) command)/g" {} \;
find . -name *.java -exec sed -i '' -e "s/onOffCommand/((OnOffType) command)/g" {} \;
find . -name *.java -exec sed -i '' -e "s/increaseDecreaseCommand/((IncreaseDecreaseType) command)/g" {} \;
find . -name *.java -exec sed -i '' -e "s/quantityCommand/((QuantityType<?>) command)/g" {} \;
find . -name *.java -exec sed -i '' -e "s/dateTimeState/((DateTimeType) state)/g" {} \;

LC_CTYPE=C find . -name "*.properties" -exec sed -i '' -e 's/addon\.shelly/binding\.shelly/g' {} \;
mvn spotless:apply
