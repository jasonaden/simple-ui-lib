# Clean up previous distributions
rm -rf dist
rm -rf build

# Variables
NGC="node node_modules/.bin/ngc"
ROLLUP="node node_modules/.bin/rollup"

# Run Angular Compiler
$NGC -p src/tsconfig-build.json

# Rollup simple-ui-lib.js
$ROLLUP build/simple-ui-lib.js -o dist/simple-ui-lib.js

# Copy non-js files from build
rsync -a --exclude=*.js build/ dist

# Copy library package.json
cp src/package.json dist/package.json