#/bin/sh

RESOURCE_GROUP=$1
azure group create $RESOURCE_GROUP "East Asia"

# This uses clusterParameters.json as input and writes output to generatedTemplate.json 
python main.py

azure group deployment create -f ./generatedTemplate.json $RESOURCE_GROUP dse

