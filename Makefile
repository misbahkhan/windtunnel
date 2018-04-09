all: server executor

server:
	docker build airflow-server -t airflow-server

executor:
	docker build airflow-executor -t airflow-executor
