#!/bin/sh
echo "Starting Web Dev Tools Installation for Fedora"


install_all(){
    install_node_typescript
    install_csharp
    install_docker
}

install_node_typescript(){
    echo "Installing NodeJS"
    dnf module -y install nodejs:12

    echo "Installing Typescript"
    npm install -g typescript
}

install_csharp(){
    echo "Installing C#"
    dnf -y install dotnet-sdk-5.0
    dnf -y install aspnetcore-runtime-5.0
}

install_docker(){
    echo "Installing Docker"
    dnf -y install dnf-plugins-core
    dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo
    dnf -y install docker-ce docker-ce-cli containerd.io
}

install_frontend(){
    echo "Installing React"
    npm install -g create-react-app
}

install_all

echo "Web Dev Tools Installation Complete"
