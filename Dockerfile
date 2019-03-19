ARG BASE_PYTHON=python:3.6-alpine
FROM ${BASE_PYTHON}
ENV PYTHONUNBUFFERED=1
ENV PYTHONOPTIMIZE=2
ENV PYTHONDONTWRITEBYTECODE=1
RUN pip install shiv
WORKDIR /wheels
RUN pip download pre-commit
WORKDIR /artifacts
RUN shiv -o precommit.pyz --find-links /wheels --no-index pre-commit --entry-point="pre_commit.main:main" --python="/usr/bin/env python3"
