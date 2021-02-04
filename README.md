# nuxt-shopify-ci

A docker image for running GitLab CI for Nuxt, Netlify, and Shopify.  See https://hub.docker.com/r/bukwild/nuxt-shopify-ci.

> Note: I didn't end up using this because it turned out that the GitLab runner was ~20s quicker at restoring deps (cypress, netlify-cli, etc) from a cache made from node_modules than it was at pulling this image with those deps baked into it. 🤷‍♂️
