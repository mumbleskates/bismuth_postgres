FROM postgres:10

RUN add-apt-repository pa:jonathonf/python-3.6
RUN apt-get update
RUN apt-get install -y python3.6 postgresql-plpython3-10

RUN  apt-get clean && \
     rm -rf /var/cache/apt/* /var/lib/apt/lists/*

ENTRYPOINT ["/docker-entrypoint.sh"]

EXPOSE 5432
CMD ["postgres"]

