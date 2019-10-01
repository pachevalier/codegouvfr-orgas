#!/bin/bash

curl -G https://query.wikidata.org/bigdata/namespace/wdq/sparql --data-urlencode query="$(< query_datagouv.sparql)" -H 'Accept: text/csv' > datagouv.csv

curl -G https://query.wikidata.org/bigdata/namespace/wdq/sparql --data-urlencode query="$(< query_lannuaire.sparql)" -H 'Accept: text/csv' > lannuaire.csv

