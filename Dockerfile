FROM python:3.7.3-stretch

## Step 1:
WORKDIR /app

## Step 2:
COPY app.py /app/

COPY requirements.txt /app/

## Step 3:
# hadolint ignore=DL3013
RUN pip install --upgrade pip &&\
    pip install -r /app/requirements.txt

COPY . /app/

## Step 4:
EXPOSE 80

## Step 5:
CMD ["python", "app.py"]

