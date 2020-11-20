# orctools

The [ORC C++ Tools](https://orc.apache.org/docs/cpp-tools.html) distributed as a Docker image.

**What is ORC?** ORC is a columnar file format commonly used in Big Data storage and processing. From the official documentation:

> ORC is a self-describing type-aware columnar file format designed for Hadoop workloads.

## Usage

If you're in a directory which contains one or more ORC files and want to view the schema of a single file:

```
docker run -v $(PWD):/data drboyer/orctools orc-metadata /data/part-00000-a89e32a2-aeb9-46a1-9b64-1907624d86a6-c000.snappy.orc
```
