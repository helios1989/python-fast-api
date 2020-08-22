FROM python:3.7

RUN pip install fastapi uvicorn

EXPOSE 3500

COPY ./app /app

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "3500"]
