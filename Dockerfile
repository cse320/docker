####################################################
# Docker file to build the CSE320 build environment
# Based on Ubuntu
####################################################

# Set the base image to ubuntu 
FROM ubuntu

# Set the maintainers
MAINTAINER CSE320 Instructor <cse320@cs.stonybrook.edu>
MAINTAINER Paul Campbell <paul.campbell@stonybrook.edu>

# Update the repo sources list
RUN apt-get update

############### Begin Installation ###############
RUN apt-get install -y gcc clang make gdb cgdb valgrind git
###############  Installation End  ###############

# Set default container command
ENTRYPOINT exec /bin/bash