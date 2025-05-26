FROM python:3.11

RUN pip install poetry debugpy
COPY poetry.lock .
COPY pyproject.toml .
COPY ./code ./code
RUN poetry config virtualenvs.create false
RUN poetry -v install --no-interaction
WORKDIR code
EXPOSE 8081
CMD uvicorn main:app --host 0.0.0.0 --port 8081