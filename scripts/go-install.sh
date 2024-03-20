#!/bin/bash
VERSION="1.22.1"

ARCH="amd64"

GO="go${VERSION}.linux-${ARCH}.tar.gz"

curl -O -L "https://golang.org/dl/${GO}"

sudo rm -rf /usr/local/go
sudo tar -C /usr/local -xzf ${GO}
sudo rm ${GO}

# Check if /usr/local/go/bin is already in the PATH
if [[ ":$PATH:" == *":/usr/local/go/bin:"* ]]; then
    echo "/usr/local/go/bin is already in the PATH in .bashrc, so no action needed."
else
    # Add /usr/local/go/bin to the PATH
    echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.bashrc
    echo "Added /usr/local/go/bin to the PATH in .bashrc"
fi

source ~/.bashrc

if go version; then
        echo "Go has been successfully installed!"
else
        echo "Something went wrong!"
fi
