#!/bin/bash

# Taito-cli settings
export taito_image="taitounited/taito-cli:latest"
export taito_extensions=""
export taito_plugins="docker npm"

# Common project settings for all plugins
export taito_organization="taitounited"
export taito_zone="gcloud-temp1" # rename to taito-gcloud-open1
export taito_repo_location="github-${taito_organization}"
export taito_repo_name="tool-template"
export taito_customer="customername"
export taito_project="tool-template"

# Docker
# NOTE: use docker-compose run instead of up because stdin_open/tty do not work
export docker_run="tool-template-src"

# For cloudbuild
export gcloud_zone="europe-west1-c"
export kubectl_name="kube1" # TODO rename to common-kubernetes

# Template plugin
export template_name="orig-template"
export template_source_git_url="git@github.com:TaitoUnited"
export template_dest_git_url="git@github.com:${taito_organization}"

# Link plugin
export link_urls="\
  open-boards#boards=https://github.com/${taito_organization}/${taito_repo_name}/projects \
  open-issues#issues=https://github.com/${taito_organization}/${taito_repo_name}/issues \
  open-git#git=https://github.com/${taito_organization}/${taito_repo_name} \
  open-builds#builds=https://console.cloud.google.com/gcr/builds?project=${taito_zone}&query=source.repo_source.repo_name%3D%22${taito_repo_location}-${taito_repo_name}%22 \
  open-artifacts#artifacts=https://console.cloud.google.com/gcr/images/${taito_zone}/EU/${taito_repo_location}-${taito_repo_name}?project=${taito_zone} \
  "
