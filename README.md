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

## Deploying to Heroku

Just click the button below to deploy this project to heroku. If you're
alread in the Konglomerate beta program then the
`konglomerate` add-on will be automatically provisioned for you.

I'f you're not yet in the Konglomerate beta-program, you can request an
invitation here: <http://konglomerate.io>

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

After your app is deployed you can watch the heroku process logs by
doing something this:

```bash
$ heroku logs --tail -a your-new-app
```

Then in a seperate console start your Faktory worker:

```bash
$ heroku ps:scale worker=1 -a your-new-app
```

And then queue some jobs:

```bash
$ heroku run rake queue_jobs
```

In the console where you're tailing the logs you should see some
activity.

Then don't forget to shut down the worker:

```bash
$ heroku ps:scale worker=0 -a your-new-app
```
