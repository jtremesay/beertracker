FROM python

WORKDIR /opt/beertracker

# Install the dependencies
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Install the project
# Try to add the most frequently updated files lowers than the
# unfrequently ones. This increase the cache efficiency. 
COPY manage.py manage.py
COPY proj proj
COPY beertracker beertracker

# Run the debug web server
CMD gunicorn -b 0.0.0.0:8000 -k gevent proj.wsgi