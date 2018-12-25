if (git status --porcelain) {
echo "lalala1"
git add .
echo "lalala2"
git config user.email "victor.putrov@aspose.com"
echo "lalala3"
git config user.name "Victor Putrov"
echo "lalala4"
git commit -m "generate SDK sources for v18.12"
echo "lalala5"
git push origin HEAD:master
echo "lalala67"
} else {
	echo "dududu"
}
