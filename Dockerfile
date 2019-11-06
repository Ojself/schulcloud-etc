FROM mongo:4.0
WORKDIR /tmp/
COPY . /tmp/
RUN chmod 755 /tmp/freshetc.sh
CMD /tmp/freshetc.sh

