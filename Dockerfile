FROM fedora
#it will be the base image
MAINTAINER rasmita@gmail.com,98888
#dev infor for people to connect
RUN yum install httpd -y
#it will install httpd
WORKDIR /var/www/html/
#this is changing the current working directory to docunemnt of applicationserver
COPY . .
#copy only data from currect to the location of docker image
EXPOSE 80
#it will tell docketr image to use 80 port for application server
#CMD httpd -DFOREGROUND
#it will start parent process as httppd application server 
#cmd can be replaceed by docker user
ENTRYPOINT httpd -DFOREGROUND
#same as cmd but wecanot replace it by argument
