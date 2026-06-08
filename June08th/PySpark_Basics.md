# PySpark Basics

## 1. What is Big Data and What is PySpark?

Big Data refers to extremely large volumes of data generated from various sources such as social media platforms, websites, mobile applications, banking systems, and online services. Traditional data processing tools often struggle to manage and analyze such large datasets efficiently.

### Characteristics of Big Data

- **Volume** – Large quantity of data.
- **Velocity** – Speed at which data is generated and processed.
- **Variety** – Different forms of data such as text, images, videos, and logs.
- **Veracity** – Accuracy and reliability of data.
- **Value** – Useful insights obtained from data.

### What is PySpark?

PySpark is the Python API for Apache Spark. It enables developers to process and analyze large datasets using Python while taking advantage of Spark's distributed computing framework.

### Advantages of PySpark

- High-speed data processing
- Easy integration with Python
- Distributed computing support
- Scalable architecture
- Fault-tolerant processing

### Applications of PySpark

- Data Engineering
- Data Analytics
- ETL Processes
- Machine Learning
- Log Analysis

## 2. Spark's Basic Architecture

Apache Spark uses a distributed architecture where multiple machines work together to process data.

### Main Components

- Driver Program
- Cluster Manager
- Worker Nodes
- Executors
- Tasks

### Working Process

1. The user submits a Spark application.
2. The Driver Program creates jobs and tasks.
3. The Cluster Manager allocates resources.
4. Worker Nodes execute assigned tasks.
5. Executors process data and return results.
6. The Driver Program collects and displays the output.

### Benefits

- Parallel processing
- Faster execution
- Scalability
- Fault tolerance

## 3. Cluster Manager, Spark Session, Spark Context, Driver Node, Worker Node

### Cluster Manager

The Cluster Manager is responsible for managing resources across the Spark cluster.

Examples:

- Hadoop YARN
- Kubernetes
- Spark Standalone

### Spark Session

SparkSession is the entry point for working with PySpark applications.

```python
from pyspark.sql import SparkSession

spark = SparkSession.builder.appName("Demo").getOrCreate()
```

### Spark Context

SparkContext acts as the connection between the Spark application and the cluster. It coordinates task execution and resource allocation.

### Driver Node

The Driver Node controls the execution of the Spark application. It creates jobs, schedules tasks, and gathers results.

### Worker Node

Worker Nodes execute the tasks assigned by the Driver Node. Executors run within Worker Nodes and perform computations.

## 4. What is Client Mode and Cluster Mode?

Spark applications can run in two deployment modes.

### Client Mode

In Client Mode, the Driver Program runs on the machine from which the application is submitted.

#### Features

- Easier debugging
- Suitable for development
- Driver remains outside the cluster

### Cluster Mode

In Cluster Mode, the Driver Program runs inside the cluster.

#### Features

- Better fault tolerance
- Improved resource utilization
- Preferred for production environments
