git checkout main
git pull
version=$(npm version patch -no-git-tag-version | xargs echo)
# echo 'version is' $version
git add . | git commit -m "ready to release version $version"
git checkout production
git pull
git merge main
git commit -m $version
git tag $version
