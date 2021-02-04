FROM cypress/base:12

# Add Shopify ThemeKit
# https://github.com/Shopify/themekit/issues/896#issuecomment-772688848
RUN curl -s https://raw.githubusercontent.com/Shopify/themekit/master/scripts/install.py | python

# Install:
# - cypress - For running tests without downloading CI cache
# - netlify-cli - For deploying branch deploys to Netlify
# - serve - For running local webserver from statically generated site
# - start-server-and-test - For coordinating `cypress` with `serve`
# - ... everything else are peer dependencies
RUN npm install -g cypress netlify-cli serve start-server-and-test @babel/core @babel/preset-env

# Export where node_modules are found
# https://stackoverflow.com/a/15646750/59160
RUN export NODE_PATH=/usr/local/lib/node_modules
