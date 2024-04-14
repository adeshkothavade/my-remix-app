# login to aws 
aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 219634003552.dkr.ecr.ap-south-1.amazonaws.com

docker build -f./Dockerfile . -t remix-test-app-repo 

docker tag remix-test-app-repo:latest 219634003552.dkr.ecr.ap-south-1.amazonaws.com/remix-test-app-repo:latest

docker push 219634003552.dkr.ecr.ap-south-1.amazonaws.com/remix-test-app-repo:latest