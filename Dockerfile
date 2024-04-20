# Use an official Python runtime as the base image
FROM python:3.11.7

# Set the working directory in the container
WORKDIR /app

# Copy the Python script and input file into the container
COPY p.py /app/
COPY paragraphs.txt /app/

RUN pip install spacy

# Download the required language model for 'spacy'
RUN python3 -m spacy download en_core_web_sm

# Run the Python script with the input file path as an argument when the container starts
CMD ["python", "p.py", "/app/paragraphs.txt"]