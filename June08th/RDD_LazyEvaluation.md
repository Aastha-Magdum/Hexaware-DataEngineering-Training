# What is RDD?

RDD (Resilient Distributed Dataset) is the basic data structure of Apache Spark. It is used to store and process data across multiple machines.

RDD divides data into partitions and distributes them across worker nodes. This allows Spark to process large datasets efficiently using parallel execution.

The term Resilient means that Spark can recover lost data automatically if a failure occurs.

## Features of RDD

- Distributed storage
- Fault tolerance
- Parallel processing
- Immutable data structure
- Scalability

## Example

```python
rdd = spark.sparkContext.parallelize([10, 20, 30, 40, 50])

print(rdd.collect())
```

# Advantages of Using RDD

## Fault Tolerance

RDDs can recover lost partitions automatically.

## Parallel Processing

Data is processed simultaneously across multiple machines.

## Scalability

RDDs can handle large datasets by utilizing cluster resources.

## In-Memory Processing

Data can be stored in memory for faster execution.

## Flexibility

RDDs support structured, semi-structured, and unstructured data.

## Efficient Processing

RDDs provide various transformations and actions for data processing.

# What is Lazy Evaluation?

Lazy Evaluation is a technique where Spark delays execution until an action is called.

Transformations such as `map()` and `filter()` are not executed immediately. Spark records them and waits for an action like `collect()` or `count()`.

This helps Spark optimize execution and improve performance.

## Example

```python
rdd = spark.sparkContext.parallelize([1, 2, 3, 4, 5])

result = rdd.map(lambda x: x * 2)

print(result.collect())
```

In this example:

- `map()` is a transformation
- `collect()` is an action
- Execution starts only when `collect()` is called

## Advantages of Lazy Evaluation

- Better performance
- Reduced computations
- Optimized execution plan
- Efficient resource usage
- Improved scalability

# Conclusion

RDD is the core data structure in Apache Spark. It supports distributed processing, fault tolerance, and scalability. Lazy Evaluation improves efficiency by delaying execution until results are needed.
