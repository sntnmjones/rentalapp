FROM python:3.12-slim

WORKDIR /app

COPY . /app

# RUN pip install --no-cache-dir fastapi pydantic uvicorn 
RUN pip install fastapi uvicorn 

# Define environment variable
ENV NAME=World

EXPOSE 80

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]