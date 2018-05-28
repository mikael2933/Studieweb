all: clean org-to-markdown batch-old-new

org-to-markdown:
	emacs hugo/content-org/studieweb.org --eval "(org-hugo-export-wim-to-md t)" --kill


batch-old-new:
	mkdir public
	hugo -s hugo -d ../public
	cp -r old public

clean:
	rm -rf hugo/content/ public/
