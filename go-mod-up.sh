if ! go get -u 2>&1;
then
    echo "Error: failed to execute go get -u"
    exit 1
fi

git diff --exit-code go.mod &> /dev/null

if [ $? -eq 1 ]; then
    echo "go.mod or go.sum differs, please re-add it to your commit"
    exit 1
fi