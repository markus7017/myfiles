#!/bin/bash
cp -r ~/Dev/openhab-5/git/openhab-addons/bundles/org.openhab.binding.shelly/src/* src/
find . -name "*.java" -exec sed -i '' -e ':a' -e 'N' -e '$!ba' -e 's|/\*\n \* Copyright (c) 2010-2025|/\*\*\n \* Copyright (c) 2010-2024|g' {} +
find . -name "*.java" -exec sed -i '' -e ':a' -e 'N' -e '$!ba' -e 's|import org.eclipse.californium.elements.config.Configuration;\nimport org.eclipse.californium.scandium.config.DtlsConfig;|import org.eclipse.californium.core.network.config.NetworkConfig;|g' {} +
find . -name "*.java" -exec sed -i '' -e ':a' -e 'N' -e '$!ba' -e 's|import org.eclipse.californium.elements.config.Configuration;\n||g' {} +
find . -name "*.java" -exec sed -i '' -e ':a' -e 'N' -e '$!ba' -e 's|.*static .\n.*\n.*DtlsConfig.*\n.*.\n||g' {} +

find . -name "*.xml" -exec  sed -i '' -e ':a' -e 'N' -e '$!ba' -e 's|<semantic-equipment-tag>.*<\/semantic-equipment-tag>\n\t\t||g' {} +
#mvn spotless:apply
rmds
