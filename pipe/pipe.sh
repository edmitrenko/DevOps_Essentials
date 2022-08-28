#!/bin/bash

if [ -d /home/user/pipe ] && [ -f /home/user/pipe/pipe.txt ] && [ -s /home/user/pipe/pipe.txt ]
then
	echo  "Something went wrong!" 
else
	mkdir pipe && touch pipe/pipe.txt && echo "Hello" > pipe/pipe.txt && cat pipe/pipe.txt
fi

