#REM "Configuring"
#cd %1
#SET DISPLAY=localhost:0.0
#SET GIT_SSH=%CD%\..\..\build\git_ssh.sh
#SET SSH_ASKPASS=%CD%\..\..\build\Askpass.exe
#REM "Adding"
#git add .
#REM "Committing"
#git config user.email "victor.putrov@aspose.com"
#git config user.name "Victor Putrov"
#git commit -m "generate SDK sources for v18.11"
#REM "Pushing"
#git push origin HEAD:master
#REM "Pushed"
git tag -a 18.12.0
git push --tags
