FROM python

WORKDIR /opt/beertracker

# Install the dependencies
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Install the project
COPY manage.py ./
COPY proj ./
COPY beertracker ./