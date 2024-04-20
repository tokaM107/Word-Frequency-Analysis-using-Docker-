FROM python:3.11.7
WORKDIR /app
COPY p.py /app/
COPY paragraphs.txt /app/
RUN pip install spacy
RUN python3 -m spacy download en_core_web_sm
CMD ["python", "p.py", "/app/paragraphs.txt"]