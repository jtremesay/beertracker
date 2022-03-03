FROM python

WORKDIR /opt/beertracker

# Install the dependencies
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Install the project
# Try to add the most frequently updated files lowers than the
# unfrequently ones. This increase the cache efficiency. 
COPY manage.py manage.py
COPY entrypoint.sh entrypoint.sh
COPY proj proj
COPY beertracker beertracker

# Collect the static files
RUN ./manage.py collectstatic --no-input

# Run the wsgi server
ENTRYPOINT ["./entrypoint.sh"]
CMD ["gunicorn", "-b", "0.0.0.0:8000", "-k", "gevent", "proj.wsgi"]