#!/bin/bash

# adds aio alias so you do not have to invoke by typing npx, requires aio-cli as a project dep
echo "alias aio=\"npx aio\"" >> /etc/bash.bashrc

# let's build the project
npm install @adobe/aio-cli # should install aio-cli if not installed, and also run npm generally

# let's enable telemtry so the dev server kicks off without prompt
npx aio telemetry on