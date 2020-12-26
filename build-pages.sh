set -e
BUILD_DIR="./dist"
rm -rf ./cache
rm -rf ./dist
docker run -u $(id -u) -v $PWD:/antora:Z --rm -t antora/antora --cache-dir=./.cache/antora antora-playbook.yml

echo "hosting on http://localhost:8080 ... (stop with <Ctrl>-C)"
python3 -m http.server 8080 --directory $BUILD_DIR >/dev/null 2>&1
