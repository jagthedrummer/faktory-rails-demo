# Faktory Rails Demo App

This is a tiny demo app to show how to use Faktory in a Rails project.

## Running this project locally

Start your faktory server.

```bash
$ faktory
```

Then start a worker

```bash
$ faktory-worker
```

Then run a rake task to queue up 10 jobs

```bash
$ rake queue_jobs
```

You should see some output in your `faktory-worker` console indicating
that the jobs are being picked up and processed.
