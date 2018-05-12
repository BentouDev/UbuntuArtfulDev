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
	git \
	make \
	cmake \
	libglfw3-dev \
	libglm-dev \
	libspdlog-dev \
	libassimp-dev \
	qt5-default \
	qttools5-dev-tools

RUN pip install conan

RUN git clone https://github.com/google/googletest.git googletest && \
	cd googletest && \
	cmake . && \
	make && \
	make install && \
	cd ..
