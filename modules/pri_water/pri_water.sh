#!/vendor/bin/sh

D=/data/vendor/.water
while true; do
    for f in "$D"/*; do
        [ -e "$f" ] || continue
        chmod 0664 "$f"
        chown system:camera "$f"
        chcon u:object_r:mtk_water_data_file:s0 "$f"
    done
    sleep 1
done
