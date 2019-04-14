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
	libc++-dev \
	llvm-5.0-dev \
	libclang-5.0-dev \
	git \
	make \
	cmake \
	libglfw3-dev \
	libglm-dev \
	libspdlog-dev \
	libassimp-dev \
	qt5-default \
	qtdeclarative5-dev \
	qttools5-dev-tools \
	qtdeclarative5-qtquick2-plugin \
	qt5-qmltooling-plugins \
	qml-module-qtquick-controls \
	qml-module-qtquick-layouts \
	python3-pip \
	python3-dev \
	build-essential 

RUN pip3 install conan --upgrade
RUN pip3 install conan_package_tools --upgrade
