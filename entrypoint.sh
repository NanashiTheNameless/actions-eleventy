#!/bin/sh

if [ "$INPUT_INSTALL_DEPENDENCIES" = "true" ]; then
  echo "Running \`npm install\`"
  npm install
fi


if [ "$INPUT_UPDATE_NPM" = "true" ]; then
  echo "Running \`npm update\` and \`npm update -g\`"
  npm update
  npm update -g
fi

echo "Running eleventy"
npx @11ty/eleventy $INPUT_ARGS
