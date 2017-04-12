# Clean up previous distributions if folders exist
if (Test-Path dist) {
	Remove-Item dist -Recurse -Force
}

if (Test-Path build) {
	Remove-Item build -Recurse -Force
}

# Variables
$NGC="node_modules/.bin/ngc.cmd"
$ROLLUP="node_modules/.bin/rollup.cmd"

# Run Angular Compiler
& "$NGC" -p src/tsconfig-build.json

# Rollup simple-ui-lib.js
& "$ROLLUP" build/simple-ui-lib.js -o dist/simple-ui-lib.js

# Run Angular Compiler to ES5
& "$NGC" -p src/tsconfig-es5.json

# Rollup simple-ui-lib.js
& "$ROLLUP" build/simple-ui-lib.js -o dist/simple-ui-lib.es5.js

# Copy non-js files from build
Copy-Item -Exclude *.js -Recurse -Path build/* -Destination dist

# Copy library package.json
Copy-Item -Path src/package.json -Destination dist/package.json
Copy-Item -Path README.md -Destination dist/README.md