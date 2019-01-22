#!/bin/bash

if [ $# -ne 5 ];
then
    echo "usage: setup.sh packagename email author description githubuser"
    echo "  where package-name must be [a-z]+"
    echo "  beware that inputs containing spaces must be quoted, or the spaces escaped"
    echo "  ex: ./setup.sh foo me@mail.com 'John Doe' 'A package' Johndoe123"
    exit 0
fi

NAME=$(sed 's/[^a-z]//g' <<< "$1")
NAMEUP="$(tr '[:lower:]' '[:upper:]' <<< ${NAME:0:1})${NAME:1}"
EMAIL=$2
AUTHOR=$3
DESCRIPTION=$4
GITHUBUSER=$5
YEAR=$(date -u +'%Y')
DATE=$(date -u +'%Y-%m-%d')

echo ""
echo "NAME: $NAME"
echo "EMAIL: $EMAIL"
echo "AUTHOR: $AUTHOR"
echo "DESCRIPTION: $DESCRIPTION"
echo "GITHUBUSER: $GITHUBUSER"
echo ""
read -p "Proceed ? [y]/n " go

if [ "$go" == "n" ]
then
    exit 1
fi

# do tag replacements
find . -type f -exec sed -i "s/magie/$NAME/g" {} +
find . -type f -exec sed -i "s/Magie/$NAMEUP/g" {} +
find . -type f -exec sed -i "s/gui.sch@gmail.com/$EMAIL/g" {} +
find . -type f -exec sed -i "s/gui sch/$AUTHOR/g" {} +
find . -type f -exec sed -i "s/the best magical package/$DESCRIPTION/g" {} +
find . -type f -exec sed -i "s/ceyzeriat/$GITHUBUSER/g" {} +
find . -type f -exec sed -i "s/2019/$YEAR/g" {} +
find . -type f -exec sed -i "s/2019-01-22/$DATE/g" {} +

# change the package-folder name
mv phoenix "$NAME"

# replace README with the templated one
mv README.rst README.bak
mv _README.rst README.rst


echo "Done"
