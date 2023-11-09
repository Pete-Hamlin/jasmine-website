build:
    docker compose run jekyll jekyll build

serve:
    docker compose up

deploy: build
    rsync -e 'ssh -p 2222' --delete --info=progress2 -r ./_site pete-hamlin.com:/usr/share/homelabos/jasmine

clean:
    rm -rf _site .jekyll-cache vendor
