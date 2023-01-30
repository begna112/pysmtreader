FROM python:3.11-alpine

RUN pip3 install requests PyYAML

COPY ./*.py ./*.yaml /bin/
WORKDIR /bin

CMD ["python", "-u", "./main.py"]
