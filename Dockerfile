FROM  jupyter/scipy-notebook

LABEL maintainer="Ang Hou Fu <houfu@outlook.sg>"

RUN conda install --quiet --yes -c conda-forge spacy && \
    python -m spacy download en_core_web_sm && \
    python -m spacy download en_core_web_md && \
    conda clean --all -f -y

RUN pip install --no-cache-dir pymongo dnspython