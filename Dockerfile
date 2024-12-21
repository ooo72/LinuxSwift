FROM gitpod/workspace-full

RUN sudo apt-get update && sudo apt-get install -y \
    binutils \
    libatomic1 \
    libcurl4 \
    libgcc-9-dev \
    libicu-dev \
    libssl-dev \
    libstdc++-9-dev \
    libxml2 \
    libz3-dev \
    pkg-config \
    tzdata \
    zlib1g-dev

RUN wget https://download.swift.org/releases/swift-6.0.3-release/ubuntu2004/swift-6.0.3-RELEASE-ubuntu20.04.tar.gz && \
    tar -xvzf swift-6.0.3-RELEASE-ubuntu20.04.tar.gz && \
    sudo mv swift-6.0.3-RELEASE-ubuntu20.04 /usr/local/swift

RUN echo 'export PATH=/usr/local/swift/usr/bin:$PATH' >> ~/.bashrc

RUN source ~/.bashrc
