FROM ubuntu

USER root

RUN apt update && apt install wget -y

RUN apt install -y curl

RUN curl -fsSL https://get.docker.com -o get-docker.sh

RUN sh get-docker.sh 

RUN mkdir -p jenkins_home

RUN chmod 777 jenkins_home

RUN apt install openjdk-11-jdk -y

RUN java --version
 
RUN apt-get install openssh-server -y

RUN apt-get install git -y

RUN git --version

RUN useradd -ms /bin/bash jenkins

RUN usermod -aG sudo jenkins

RUN usermod -aG docker jenkins

RUN echo "jenkins ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/jenkins

USER jenkins

WORKDIR /jenkins_home

CMD ["/bin/bash"]