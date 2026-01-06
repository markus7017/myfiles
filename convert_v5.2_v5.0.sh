#!/bin/bash
find . -name "*.java" -exec sed -i '' -e ':a' -e 'N' -e '$!ba' -e 's|/\*\n \* Copyright (c) 2010-2026|/\*\n \* Copyright (c) 2010-2025|g' {} +

find . -name ".DS_Store" -type f -delete
mvn spotless:apply
