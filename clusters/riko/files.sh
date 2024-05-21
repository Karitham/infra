echo "resources:" >$(dirname "$0")/kustomization.yaml
echo "- flux-system" >>$(dirname "$0")/kustomization.yaml
for file in $(find "$(dirname "$0")/apps" -name '*.yaml'); do
    echo "- $(realpath --relative-to="$(dirname "$0")" "$file")" >>$(dirname "$0")/kustomization.yaml
done
