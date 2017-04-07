# Clean up previous distributions
rm -rf dist

# Variable pointing to NGC
NGC="node node_modules/.bin/ngc"

# Run Angular Compiler
$NGC -p src/tsconfig-build.json