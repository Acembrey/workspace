#!/bin/bash

podman run -d --name gitlab \
    --hostname "gitlab.example.com" \
    -p 10.0.0.30:80:80 \
    -p 10.0.0.30:22:22 \
    -v /opt/gitlab/config:/etc/gitlab:Z     \
    -v /opt/gitlab/logs:/var/log/gitlab:Z   \
    -v /opt/gitlab/data:/var/opt/gitlab:Z   \
    localhost/gitlab/gitlab-ce:16.11 # i retagged the image
