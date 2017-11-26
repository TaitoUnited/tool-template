FROM python:3.6.3-stretch
WORKDIR /build
COPY . /build
WORKDIR /build/src
RUN pip install pipenv
RUN pipenv install --dev --system
CMD python ./main.py
