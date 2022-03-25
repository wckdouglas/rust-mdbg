FROM rust:buster as base

COPY . /opt
WORKDIR /opt
RUN cargo build --release

ENV PATH /opt/target/release:$PATH
