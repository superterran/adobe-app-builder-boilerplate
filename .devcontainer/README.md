# Dev Containers

Dev Containers is an orchastration tool built around Visual Studio Code. We leverage it to provide easy local and cloud test development environments.

## Using This Image

This image is fairly clean, we install `xdg-tools` to facilitate browser-based logins. Please note that this works locally, but in Codespaces one must populate the `.env` file to authenticate as authenticating through the link does not work.

## aio-cli

`aio-cli` is installed by default as part of the postCreate.sh procedure. Technically, the direct way to access this tool is with `npx aio`, but we add an alias to `aio` routes to `npx`.
