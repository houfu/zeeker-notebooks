# Zeeker Notebooks

A collection of jupyter notebooks to explore, test and experiment on the zeeker database.

## Using the standalone notebook server docker container

This repository is also the source for the docker image [houfu/zeeker-notebooks](houfu/zeeker-notebooks), which is a jupyter notebook server.
You can run the image as a container and access the server, which would give you the ability to modify and experiment yourself.
```shell script
$ docker run houfu/zeeker-notebooks
```

However, this does not allow you to edit or save the files. In order to do this, you have to bind the volume to the container.

First, clone the repository and change to the root folder of the repository.

Then bind the volume to your container using the folloing command:

```shell script
$ docker run -p 8888:8888 --mount type=bind,source="$(pwd)",target=/home/jovyan/work houfu/zeeker-notebooks
```

You will now find the files in the `work` folder. 
Your changes to these files on the notebook server will also be saved on the repository, allowing you to commit and create pull requests.
(The `source` folder is also availble as the copy of the latest version of the repository. 