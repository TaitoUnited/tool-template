#!/bin/bash

: "${template_project_path:?}"
: "${template_project:?}"
: "${template_repo_name:?}"
: "${template_repo_name_alt:?}"
: "${template_customer:?}"
: "${mode:?}"

echo "- init"

# Remove the license
rm LICENSE
grep -v '"license":' < package.json > package.json.tmp
mv package.json.tmp package.json

# Replace some strings
if [ "$(uname)" = "Darwin" ]; then
  find . -type f -exec sed -i '' \
    -e "s/tool_template/${template_repo_name_alt}/g" 2> /dev/null {} \;
  find . -type f -exec sed -i '' \
    -e "s/tool-template/${template_repo_name}/g" 2> /dev/null {} \;
  find . -type f -exec sed -i '' \
    -e "s/customername/${template_customer}/g" 2> /dev/null {} \;
  find . -type f -exec sed -i '' \
    -e "s/orig-template/tool-template/g" 2> /dev/null {} \;
else
  find . -type f -exec sed -i \
    -e "s/tool_template/${template_repo_name_alt}/g" 2> /dev/null {} \;
  find . -type f -exec sed -i \
    -e "s/tool-template/${template_repo_name}/g" 2> /dev/null {} \;
  find . -type f -exec sed -i \
    -e "s/customername/${template_customer}/g" 2> /dev/null {} \;
  find . -type f -exec sed -i \
    -e "s/orig-template/tool-template/g" 2> /dev/null {} \;
fi
