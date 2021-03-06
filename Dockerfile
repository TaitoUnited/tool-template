FROM python:3.6.3-stretch
WORKDIR /build
COPY . /build
WORKDIR /build/src
# RUN npm install
RUN pip install pipenv && \
    pipenv install --dev --system
CMD python ./main.py
