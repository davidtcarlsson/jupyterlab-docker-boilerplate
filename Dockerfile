FROM python:3.10.5-slim-bullseye

WORKDIR /project

COPY ./requirements.txt /project
RUN pip install --no-cache-dir -r requirements.txt

COPY ./README.md /project
COPY ./data /project/data
COPY ./notebooks /project/notebooks

CMD ["jupyter-lab","--ip=0.0.0.0","--no-browser","--allow-root"]
