if [ -e ".git" ]
then
    git pull
else
    git clone --progress -o origin https://github.com/matthesrieke/nasa-wwj-maven.git .
fi
