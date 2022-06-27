build:
	docker build -t logsapp:env .
run:
	docker run -d -p 3000:3000 -v logs:/app/data --env-file .env --rm --name logsapp logsapp:env
run-dev:
	docker run -d -p 3000:3000 -v "C:\Projects\DockerProjects\docker\logs-app-master:/app" -v /app/node_modules -v logs:/app/data --env-file .env --rm --name logsapp logsapp:env
stop:
	docker stop logsapp