FROM rust:1.46.0

# Setting the user to non-root privlages
RUN useradd --create-home --shell /bin/bash rustacean
USER rustacean
ENV USER=rustacean

WORKDIR /home/rustacean
