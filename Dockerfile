FROM    frolvlad/alpine-python3

ENV     ENVIRONMENT docker
ENV     PYTHONPATH /
ENV     PYTHONUNBUFFERED true

# Copy the requirements file
COPY    ./app/requirements.txt /app/

# Install app dependencies
RUN     pip install -r /app/requirements.txt

# Bundle the source
COPY    ./app/ /app/

# Expose port 5000
EXPOSE  5000

ENV	FLASK_APP	/app/app.py
CMD     ["/usr/bin/python3", "-m", "flask", "run", "--host=0.0.0.0"]
