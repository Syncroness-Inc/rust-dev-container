FROM rust:1.46.0

# Setting the user to non-root privlages
RUN useradd --create-home --shell /bin/bash rustacean
USER rustacean

# Following line is needed due to a bug.
# Cargo will not know the user even though
# it shoud be set with the `USER rustacean` command 
ENV USER=rustacean

WORKDIR /home/rustacean
