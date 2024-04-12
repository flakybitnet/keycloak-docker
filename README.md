# keycloak-docker

Docker image of Keycloak, Identity and Access Management system.

This is a superset of [official images](https://quay.io/repository/keycloak/keycloak).

## Goal

To provide [optimized images](https://www.keycloak.org/server/containers). See also [optimizing the Keycloak startup](https://www.keycloak.org/server/configuration#_optimize_the_keycloak_startup).

## Images

Images are built on top of the official ones and published in [Quay](https://quay.io/repository/flakybitnet/keycloak-server), 
[GHCR](https://github.com/flakybitnet/keycloak-docker/pkgs/container/keycloak-server), [AWS](https://gallery.ecr.aws/flakybitnet/keycloak/server) and Harbor registries.

There are two profiles:
* `ha-pg` — high availability profile with Postgres database;
* `std-pg` — standalone profile with Postgres database.

So, Keycloak version should be prefixed by profile name. For example, `ha-pg-24.0.0` or `std-pg-24.0.0`.

## Usage

[Using optimized image](https://www.keycloak.org/server/containers#_starting_the_optimized_keycloak_container_image) you should provide `--optimized` flag as a command argument. So, you can run the server by the command:

```
$ docker run \
    -e KEYCLOAK_ADMIN=admin -e KEYCLOAK_ADMIN_PASSWORD=change_me \
    -p 8443:8443 \
    <image>:<version> \
    start --optimized
```

## Source

Source code are available at [Gitea](https://gitea.flakybit.net/flakybit/keycloak-docker) and mirrored to [GitHub](https://github.com/flakybitnet/keycloak-docker).
