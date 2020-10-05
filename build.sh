shelly_files=src/main/java/org/openhab/binding/shelly/internal/*.java
magentatv_files=src/main/java/org/openhab/binding/magentatv/internal/*.java
gree_files=src/main/java/org/openhab/binding/gree/internal/*.java

if [ -f "$shelly_files" ]; then
    echo "$shelly_files exists."
    binding=shelly
else 
    echo "$shelly_files does not exist."
fi

[[ -f "$shelly_files" ]] && binding=shelly
[[ -f "magentatv_files" ]] && binding=magentatv
[[ -f "gree_files" ]] && binding=gree
echo "Binding $binding will be build and prepared for checkin"
