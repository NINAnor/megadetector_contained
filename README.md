# Megadetector contained

A repository that facilitate the use of MegaDetector using Docker environment.

## How to use it

Provided you have `Docker` installed on you system, you can build the Docker image by running:

```
git clone https://github.com/NINAnor/megadetector-contained
docker build -t megadetector-contained -f Dockerfile .
```

It is then possible to run `detection/run_detector_batch.py` using:

```
./docker_run_megadetector.sh \
    PATH/TO/YOUR/IMAGE/FOLDER \
    PATH/TO/OUTPUT/FILE
```

Ant that's it! 

By default, the output `.json` file from MegaDetector will be called `md_out.json`.

## `md_out.json` to SQLite database

If you want to convert the `md_out.json` file to a `.sqlite` database that also gives you information about whether a picture is empty, make sure to check out [https://github.com/NINAnor/md_json2sqlite](https://github.com/NINAnor/md_json2sqlite)
