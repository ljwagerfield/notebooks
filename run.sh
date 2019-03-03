DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

docker run \
       --rm \
       -p 8888:8888 \
       -v ${DIR}/notebooks:/home/jovyan/work \
       -v ${DIR}/customization:/home/jovyan/.jupyter/custom \
       jupyter/tensorflow-notebook:45b8529a6bfc \
       start-notebook.sh \
       --NotebookApp.token=