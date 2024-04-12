ARG VERSION=latest
FROM quay.io/keycloak/keycloak:${VERSION}

ENV KC_CACHE=ispn
ENV KC_DB=postgres
ENV KC_HEALTH_ENABLED=true
ENV KC_METRICS_ENABLED=true

RUN /opt/keycloak/bin/kc.sh build
