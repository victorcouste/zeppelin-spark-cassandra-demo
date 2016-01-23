# Introduction to Zeppelin + Apache Spark + Apache Cassandra

This is a tutorial explaining how to use [Apache Zeppelin notebook](https://zeppelin.incubator.apache.org/) to interact with Apache Cassandra data through Apache Spark or directly through Cassandra CQL language.

*Please note this is an unofficial demo and tutorial.*

### Apache Spark

Apache Spark is a fast and general engine for big data processing, with built-in modules for streaming, SQL, machine learning and graph processing.
More details can be found here [http://spark.apache.org](http://spark.apache.org/).
It will be used for Cassandra data processing needs (ETL, transformations, analytics ...).

### DataStax Spark Cassandra Connector

[DataStax](http://www.datatstax.com) have developped a Spark Cassandra Connector to be able to read and write Cassandra data from Spark API. 
The Spark Cassandra Connector lets you expose Cassandra tables as Spark RDDs (or DataFrames), write Spark RDDs (or DataFrames) to Cassandra tables, and execute arbitrary CQL queries in your Spark applications.

Useful links:
* [The Spark Cassandra Connector github repository](https://github.com/datastax/spark-cassandra-connector)
* [Getting started with Apache Spark and Cassandra](https://academy.datastax.com/fr/demos/getting-started-apache-spark-and-cassandra)
* [Free training on DataStax Enterprise Analytics with Apache Spark](https://academy.datastax.com/fr/courses/getting-started-apache-spark)

### CQL Language

The Cassandra Query Language (CQL) is the primary language for communicating with the Cassandra database.
Documentation on CQL usage:
* [Introduction to CQL](http://docs.datastax.com/en/cql/3.3/cql/cqlIntro.html)
* [Using CQL](https://docs.datastax.com/en/cql/3.3/cql/cql_using/useAboutCQL.html)
