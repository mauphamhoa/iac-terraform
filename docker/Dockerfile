# Use a base image, e.g., Ubuntu
FROM ubuntu:22.04

# Install SSH server
RUN apt-get update && apt-get install -y openssh-server

# # Create the SSH directory and set up the SSH service
# RUN mkdir /var/run/sshd

# Set up a password for the root user (you can change 'rootpassword' to any password you prefer)
RUN echo 'root:root' | chpasswd

# # Prevent SSH keygen from generating new keys on container restart
RUN mkdir /root/.ssh
RUN chmod 700 /root/.ssh

# Add your public key to the authorized_keys file
COPY id_rsa.pub /root/.ssh/authorized_keys
RUN chmod 600 /root/.ssh/authorized_keys

# Allow root login via SSH
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed -i 's/#HostbasedAuthentication no/HostbasedAuthentication no/' /etc/ssh/sshd_config
RUN sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config


# Expose SSH port
EXPOSE 22

# Start the SSH service
# CMD ["/usr/sbin/sshd", "-D"]



## docker build docker/ -t ubuntu:22.04-ssh