#!/usr/bin/env bash

hook_pre() {
  echo 'Always running before any command...'
}

hook_pre_docker_compose() {
  export PUID="$(id -u)"
  export PGID="$(id -g)"
  echo 'Running before docker compose...'
}

hook_post_docker_compose() {
  unset PUID
  unset PGID
  echo 'Running after docker compose...'
}
