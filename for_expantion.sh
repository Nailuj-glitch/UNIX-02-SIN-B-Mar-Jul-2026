#!/bin/bash
for file in example_file*; do
    if [[ "${file}" == "example_file1" ]]; then
        echo "Skipping the first file"
        continue
    fi

    echo "${RANDOM}" > "${file}"
done
# Este script recorre todos los archivos cuyo nombre comienza con example_file,
# omite específicamente example_file1 y escribe un número aleatorio en el resto de los archivos,
# reemplazando cualquier contenido que tuvieran previamente.