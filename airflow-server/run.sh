#!/bin/bash
airflow initdb
airflow scheduler &
airflow webserver
