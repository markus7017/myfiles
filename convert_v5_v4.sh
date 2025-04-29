find . -name *.java -exec sed -i '' -E 's:\/\*\n \* Copyright \(c\) 2010-2025:\/\*\*\n \* Copyright \(c\) 2010-2024:g'  {} \;
mvn spotless:apply

