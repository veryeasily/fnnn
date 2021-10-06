FROM haskell:8
LABEL Name=fnnn Version=0.0.1

RUN groupadd -g 1000 app && \
    useradd -u 1000 -g 1000 -m -d /home/app app

USER app
RUN mkdir -p /home/app/.cabal/
WORKDIR /app/
VOLUME ["/app"]
VOLUME ["/home/app/.cabal"]
CMD ["cabal", "run", "fnnn-exe"]
