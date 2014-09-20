#standard ubuntu for me
FROM ubuntu:14.04
MAINTAINER Olaf Pichler <Olaf.P@gmx.at>
RUN apt-get update && apt-get install -y zsh wget htop
RUN wget -O /etc/zsh/zshrc http://git.grml.org/f/grml-etc-core/etc/zsh/zshrc
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
RUN chsh -s /usr/bin/zsh