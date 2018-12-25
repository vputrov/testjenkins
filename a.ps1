param([String]$v)

if (-Not $v) {
	echo "Version not specified. Run this script with -v option specified."
	exit 1
}
if (git status --porcelain) {
	echo "Configuring..."
#cd %1
	SET DISPLAY=localhost:0.0
	SET GIT_SSH=git_ssh.sh
	SET SSH_ASKPASS=Askpass.exe
	echo "Adding..."
	git add .
	echo "Committing..."
	git config user.email "victor.putrov@aspose.com"
	git config user.name "Victor Putrov"
	git commit -m "generate SDK sources for v18.11"
	echo "Pushing..."
	git push origin HEAD:master
	echo "Tagging..."
	git tag -a $v -m $v --force
	git push --tags
	echo "Finished."
} else {
	echo "No changes. Nothing to push."
}
