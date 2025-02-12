# Use the tiagopeixoto/graph-tool:latest image as the base image
FROM tiagopeixoto/graph-tool:latest

# Copy the current directory contents into the container at /app
COPY . /app

WORKDIR /app

RUN pacman -S python-pip --noconfirm
RUN pacman -S python-scikit-learn --noconfirm
RUN pacman -S git --noconfirm
RUN pacman -S gcc --noconfirm
RUN pip install git+https://github.com/takanori-fujiwara/deepgl.git --break-system-packages
RUN pip install git+https://github.com/alcides/GeneticEngine.git --break-system-packages
RUN pip install igraph --break-system-packages
RUN pip install jupytext --break-system-packages
RUN pip install node2vec --break-system-packages
RUN pip install black --break-system-packages
RUN pip install tensorflow --break-system-packages
RUN pip install polars --break-system-packages
RUN pip install pyarrow --break-system-packages

# Make port 80 available
EXPOSE 80

# Run this with docker build -t tiagopeixoto/graph-tool .
