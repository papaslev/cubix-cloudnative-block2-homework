# Cubix Cloud Native – Block 2 Homework Notes

## Local build of applications (not part of Docker build)
```powershell
cd .\frontapp
.\mvnw clean verify

cd ..\backapp
.\mvnw clean verify

cd ..
