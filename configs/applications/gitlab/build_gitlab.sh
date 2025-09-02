#!/bin/bash
# install reqs, configure default fw zone, pull container, run container

# GLOBAL VARS
GITLAB_IMAGE=${

# req packages from RHEL repos
dnf -y install podman slirp4netns fuse-overlayfs container-selinux

# open basic services, obviously this would be only for internal 
firewall-cmd --permanent --add-service=https --add-service=http
firewall-cmd --reload

# pull and build the container, will prompt for login
GITLAB_IMAGE=gitlab/gitlab-ce:16.11.10-ce.0
IP=



