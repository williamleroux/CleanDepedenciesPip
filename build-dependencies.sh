#!/bin/bash

find "$1"  -name "*.py" -not -path '*/venv/*' -print0 | while IFS= read -r -d '' path
do
    base=$(basename --suffix=".txt"  "$path")
    new_path="Copy-tmp-dont-touch"/"$base"$counter".py"
    cp "$path" "$new_path"
    counter=$(( $counter +1 ))
done

pipreqs --use-local --savepath requirements.txt Copy-tmp-dont-touch

cat Default-dont-touch/requirements-django-default.txt >> requirements.txt

cat add-your-dep.txt >> requirements.txt
