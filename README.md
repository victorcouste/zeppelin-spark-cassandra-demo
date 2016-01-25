# Apache Zeppelin + Apache Spark + Apache Cassandra

This is a tutorial explaining how to use [Apache Zeppelin notebook](https://zeppelin.incubator.apache.org/) to interact with [Apache Cassandra](http://cassandra.apache.org/) NoSQL database through [Apache Spark](http://spark.apache.org/) or directly through Cassandra CQL language.

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

The Cassandra CQL Interpreter for Apache Zeppelin is written by my colleague Duy Hai Doan  [@doanduyhai](https://twitter.com/doanduyhai)

[CQL Interpreter documentation for Apache Zeppelin 0.5.5](https://zeppelin.incubator.apache.org/docs/0.5.5-incubating/interpreter/cassandra.html)

### Installation and Setup

1. Apache Cassandra and Apache Spark

  First you need to install a Cassandra cluster and a Spark cluster connected with the DataStax Spark Cassandra connector. A very simple way to do that is to use DataStax Enterprise (DSE), it’s free for development or test and it contains Apache Cassandra and Apache Spark already linked.
  You can download DataStax Enterprise from https://academy.datastax.com/downloads and find installation instructions here http://docs.datastax.com/en/getting_started/doc/getting_started/installDSE.html.
  After the installation, start your DSE Cassandra cluster (it can be a single node) with Spark enable with the command line “dse cassandra -k”.

2. Apache Zeppelin

  1. Clone Zeppelin repository `git clone https://github.com/apache/incubator-zeppelin`

  2. Compile with the cassandra-spark connector
     
     Select your version depending of your DataStax Enterprise (DSE) or Apache Spark version installed.
     For example for DSE 4.8 or Spark 1.4 `mvn clean package -Pcassandra-spark-1.4 -DskipTests`

3. Start Zeppelin

  `$ZEPPELIN_HOME\bin\zeppelin-daemon.sh start`
  
  Then Zeppelin must be available at [http://localhost:8080/](http://localhost:8080/)

4. Add the property `spark.cassandra.connection.host` with value `127.0.0.1` (IP to one of your Cassandra cluster node) to the Spark interpreter


