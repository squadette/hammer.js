release:
	yarn install
	cd node_modules/hammer-timejs && \
		ln -f hammer-time.js ../../dist/hammer-time.js
	cd node_modules/hammerjs && \
		yarn install && \
		yarn build && \
		ln -f hammer.js ../../dist/hammer.js && \
		ln -f hammer.min.js ../../dist/hammer.min.js && \
		ln -f hammer.min.map ../../dist/hammer.min.map && \
		mkdir -p ../../dist/tests/manual/assets && \
		ln -f tests/manual/*.html ../../dist/tests/manual && \
		ln -f tests/manual/assets/style.css ../../dist/tests/manual/assets

	node scripts/generate-data.js
	node scripts/generate-changelog.js
	node node_modules/jsdoc/jsdoc.js -c jsdoc.json

jekyll:
	bundle exec jekyll build
	make sass

serve:
	bundle exec jekyll serve

sass:
	yarn run node-sass assets/css/index.scss assets/css/index.css --output-style=compressed
