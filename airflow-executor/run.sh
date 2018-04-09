#!/bin/bash
export C_FORCE_ROOT="true" 
airflow flower &
if [ -z ${WT_QUEUE+x} ];
then airflow worker;
else airflow worker -q $WT_QUEUE;
fi
