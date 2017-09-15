FROM library/ubuntu:artful
MAINTAINER Jakub Bentkowski <bentkowski.jakub@gmail.com>

RUN apt-get update \
	&& apt-get install -y \
	xorg-dev \
	libxxf86vm-dev \
	libglu1-mesa-dev \
	clang-5.0 \
	lldb-5.0 \
	lld-5.0 \
	make \
	cmake \
	libgtest-dev \
	google-mock \
	libglfw3-dev \
	libglm-dev \
	libspdlog-dev \
	libassimp-dev \
	qt5-default \
	qttools5-dev-tools
