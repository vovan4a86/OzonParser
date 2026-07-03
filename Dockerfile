FROM joyzoursky/python-chromedriver:3.9
WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt
RUN playwright install
CMD ["python", "main.py"]