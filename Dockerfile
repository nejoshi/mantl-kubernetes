FROM ubuntu:15.10
RUN apt-get update
RUN apt-get install -y unzip wget curl libffi-dev libssl-dev build-essential python-dev python-pip vim
RUN easy_install -U pip
RUN wget -q -O terraform.zip https://releases.hashicorp.com/terraform/0.6.15/terraform_0.6.15_linux_amd64.zip
RUN unzip terraform.zip -d /usr/local/bin
RUN pip install python-barbicanclient
RUN pip install python-ceilometerclient
RUN pip install python-cinderclient
RUN pip install python-glanceclient
RUN pip install python-heatclient
RUN pip install python-magnumclient
RUN pip install python-manilaclient
RUN pip install python-mistralclient
RUN pip install python-muranoclient
RUN pip install python-neutronclient
RUN pip install python-novaclient
RUN pip install python-saharaclient
RUN pip install python-swiftclient
RUN pip install python-troveclient
RUN pip install python-tuskarclient
RUN pip install python-openstackclient
ADD requirements.txt .
RUN pip install -r requirements.txt
RUN chmod u+x /usr/local/bin/ansible*
