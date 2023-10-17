#!/bin/bash

mkdir Name_Surname && touch $PWD/Name_Surname/my_file && echo "Hello" > $PWD/Name_Surname/my_file && cat $PWD/Name_Surname/my_file || echo "Something went wrong"
