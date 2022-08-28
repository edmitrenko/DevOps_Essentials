#!/bin/bash

name="Evgeniy_Dmitrenko"
source vars

echo "Create new directory - $name"
mkdir "$name"

touch "$name/$FILE"

echo -e "Content of home directory:"
ls -lh .

echo -e "Content of $name directory:"
ls -lh "$name"
