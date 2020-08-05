![](https://img.shields.io/github/languages/top/alfarias/pycaret-docker) ![](https://img.shields.io/docker/v/alfarias/pycaret) ![](https://img.shields.io/github/license/alfarias/pycaret-docker) ![](https://img.shields.io/github/workflow/status/alfarias/pycaret-docker/Docker) ![](https://img.shields.io/docker/image-size/alfarias/pycaret) ![](https://img.shields.io/docker/pulls/alfarias/pycaret) ![](https://img.shields.io/github/issues/alfarias/pycaret-docker) ![](https://img.shields.io/github/last-commit/alfarias/pycaret-docker)

# PyCaret Docker Image

Docker Image built with PyCaret and additional Python modules as the following:

```Markdown
nbdime
hvplot
pyarrow  
fastapi[all]
gplearn
pylint
sphinx
shap
```

The Shap conflict when installing has been solved on this image.

This image is build on top of jupyter/minimal-notebook and can be started cloning this repository and using the following docker-compose command on your terminal:

```Markdown
docker-compose up --build
```

You'll see the url of the local hosted notebook on the terminal, just copy-paste onto your web browser.<br>
If you want to use Mlflow UI to collect the log results of your experiments, just open a Jupyter Terminal and type:

```Markdown
mlflow ui --host 0.0.0.0
```

And go to this adrees on your web browser:

```Markdown
localhost:5000
```

The logs are saved on `mlruns` folder.<br>
You can use the `docker-compose.yml` file in any project, just put this file on the root of your folder project and type `docker-compose up --build` on the terminal. The `$HOME` directory is `/home/jovyan` and persistent storage is enabled for your working directory.