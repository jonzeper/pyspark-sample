FROM gcr.io/spark-operator/spark-py:v3.0.0

USER 0
# Install poetry and set path for virtualenvs
RUN \
pip3 install poetry==1.0.3 && \
poetry config virtualenvs.path /opt/virtualenvs

ARG spark_uid=185
USER ${spark_uid}

COPY . /opt/starflow_app

WORKDIR /opt/starflow_app


# RUN poetry add . && \
#     poetry lock && \
#     poetry install --no-interaction --no-dev && \
