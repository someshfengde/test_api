FROM python:3.9
WORKDIR /backend
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
EXPOSE 8080
COPY . .
CMD ["gunicorn", "api:app", "-w 2", "-b 0.0.0.0:8080", "-t 500"]
