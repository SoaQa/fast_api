FROM python:3.10.6

COPY . .

RUN pip install -r requirements.txt

CMD python -m alembic upgrade head && python -m uvicorn main:app --reload --host 0.0.0.0 --port 8000
