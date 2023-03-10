FROM python:3.7.5-slim
WORKDIR /app
COPY ./requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir --upgrade -r /app/requirements.txt
COPY simple_web_app /app
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
