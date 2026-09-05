FROM python:3.13

COPY pyproject.toml ./

RUN apt-get update
RUN pip install --upgrade pip && pip install poetry && python -m pip install jupyterlab
RUN poetry config virtualenvs.create false && poetry install
