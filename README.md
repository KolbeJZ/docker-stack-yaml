Docker build command: docker build -t simpleapp:1.0 .

Docker run command: docker run -d --rm --name kolbe -p 4000:4000 simpleapp:1.0

How to deploy docker-compose.yaml: docker stack deploy -c docker-compose.yaml simpleuiapp-stack

To scale out my stack to 7 instances: docker service scale simpleapp-stack_firstservice=5

TO scale to 2 replicas: docker service scale simpleapp-stack_firstservice=2

To remove my stack and containers: docker stack rm simpleapp-stack

To display: localhost:4000 Or for stacks: localhost:3000 or localhost:3001