# How to query Twitter data on AWS Athena

## Preparing your data

Your tweets must be in the [JSON Lines text format](https://jsonlines.org/),
an extension of the JSON text format where each line represents one record
(in our case, one tweet).

There is [a sample file with 13 tweets](/sample.json) in this repository.
You can use that sample file to follow this tutorial.

Create a new folder inside an AWS S3 bucket and upload that sample file into it.
For the sake of this tutorial,
let's suppose that new folder has the following URI: `s3://your-s3-bucket/your-new-folder/`

## Create the Twitter table on AWS Athena

Go to [AWS Athena's console](https://console.aws.amazon.com/athena) and
copy-paste the SQL statement in [`create_table.sql`](/create_table.sql) into a new query.

Before running that query, you need to tweak it by changing the value of `LOCATION`
in the line before the last. Replace `s3://your-s3-bucket/your-new-folder/` with the real path of your data on S3.

Now you can run it. If everything goes well, you should receive a `Query successful` message.
A new Athena table called `twitter_stream` will have been created.

To test, you can run a simple SQL statement, such as `select * from twitter_stream`.

**An important observation**: The `CREATE TABLE` statement in this repository is based on
the structure of tweets retrieved from Twitter's open Streaming API. If your tweets come
from a difference source (for instance, Twitter's paid API), you will probably have to tweak
your `CREATE TABLE` statement.

## What's next

I highly recommend Amazon's [Top 10 Performance Tuning Tips for Athena](https://aws.amazon.com/blogs/big-data/top-10-performance-tuning-tips-for-amazon-athena/).
In particular, I think it is a great idea:

* to compress data files to save up storage on S3.
* to use S3 prefixes to partition the data (by the publication date of tweets, for instance).

