FROM ubuntu:20.04
RUN apt-get update -y
ENV DEBIAN_FRONTEND=noninteractive 
RUN apt-get install -y gnupg apt-transport-https apt-utils wget
RUN echo "deb https://notesalexp.org/tesseract-ocr5/focal/ focal main" \
|tee /etc/apt/sources.list.d/notesalexp.list > /dev/null
RUN wget -O - https://notesalexp.org/debian/alexp_key.asc | apt-key add -
RUN apt-get update -y
RUN apt-get install tesseract-ocr -y
RUN apt install imagemagick -y
ENTRYPOINT ["tesseract"]
RUN tesseract -v
