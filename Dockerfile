# em 14.06.2026 copiei de https://github.com/HowToLearnHacking/uploads/blob/main/ubuntu_vps.txt
#---1
# Use a base image that supports systemd, for example, Ubuntu
FROM ubuntu:20.04

# Install necessary packages
RUN apt-get update && \
apt-get install -y shellinabox && \
apt-get install -y systemd && \
apt-get clean && \
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN echo 'root:root' | chpasswd
# Expose the web-based terminal port
EXPOSE 4200

# Start shellinabox
#---2
CMD ["/usr/bin/shellinaboxd", "-t", "-s", "/:LOGIN"]
