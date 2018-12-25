param([String]$v)

if (-Not $v) {
	echo "Version not specified. Run this script with -v option specified."
	exit 1
}
if (git status --porcelain) {
	echo "Configuring..."
#cd %1
	$env:DISPLAY = "localhost:0.0"
	echo $MyInvocation.MyCommand.Path
	$env:GIT_SSH = "$MyInvocation.MyCommand.Path\git_ssh.sh"
	$env:SSH_ASKPASS = "$MyInvocation.MyCommand.Path\Askpass.exe"
	echo $env:SSH_ASKPASS
	echo "Adding..."
	git add .
	echo "Committing..."
	git config user.email "victor.putrov@aspose.com"
	git config user.name "Victor Putrov"
	git commit -m "generate SDK sources for v$v"
	echo "Pushing..."
	git push origin HEAD:master
	echo "Tagging..."
	git tag -a $v -m $v --force
	git push --tags --force
	echo "Finished."
} else {
	echo "No changes. Nothing to push."
}
