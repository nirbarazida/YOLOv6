FROM debian:11
 
RUN apt-get update && \
    apt-get install -y git python pip ffmpeg libsm6 libxext6
 
COPY env-setup.sh /
RUN /env-setup.sh

EXPOSE 80/tcp
WORKDIR "/YOLOv6"
CMD ["streamlit", "run", "streamlit.py", "--server.port", "80"]
