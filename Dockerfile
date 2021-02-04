FROM cypress/base:12

# Add Shopify ThemeKit
# https://github.com/Shopify/themekit/issues/896#issuecomment-772688848
curl -s https://raw.githubusercontent.com/Shopify/themekit/master/scripts/install.py | python

# Install:
# - cypress - For running tests without downloading CI cache
# - netlify-cli - For deploying branch deploys to Netlify
# - serve - For running local webserver from statically generated site
# - start-server-and-test - For coordinating `cypress` with `serve`
yarn global add cypress netlify-cli serve start-server-and-test
