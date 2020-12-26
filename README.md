docker run -u $(id -u) -v $PWD:/antora:Z --rm -t antora/antora --cache-dir=./.cache/antora antora-playbook.yml

python3 -m http.server 8080 --directory ./build 


## Sources

- https://docs-as-co.de/news/multi-repo-arc42-antora-part1/
- https://fedoramagazine.org/using-antora-for-your-open-source-documentation/
