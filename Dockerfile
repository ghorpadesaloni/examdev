FROM python
RUN pip install flask

WORKDIR /src

# Copy the dependencies file to the container
COPY . .

# Expose the port your Flask app is listening on
EXPOSE 4000
CMD ["python3", "app1.py"]

