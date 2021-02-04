# This version has the cypress runner globally available. The tag is the version
# number of Cypress we want to use.
# https://www.cypress.io/blog/2019/05/02/run-cypress-with-a-single-docker-command/
FROM cypress/included:6.4.0

# Add Shopify ThemeKit
# https://github.com/Shopify/themekit/issues/896#issuecomment-772688848
RUN curl -s https://raw.githubusercontent.com/Shopify/themekit/master/scripts/install.py | python

# Install node deps
# - netlify-cli - For deploying branch deploys to Netlify
# - serve - For running local webserver from statically generated site
# - start-server-and-test - For coordinating `cypress` with `serve`
RUN npm install -g netlify-cli serve start-server-and-test
