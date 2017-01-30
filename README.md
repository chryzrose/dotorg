# dotorg
Chrystal's portfolio from school.

# To test the portfolio

1. Build the container.

`docker build -t chryzrose/dotorg .`

2. Run the container.

`docker run --rm -it -p 8000:8000 chryzrose/dotorg`

3. Check for broken links.

In another terminal window:

`wget --spider -e robots=off -r -p http://localhost:8000/`

# To publish the portfolio

1.  Make a pull request.

This will cause Circle CI to build and validate the container.

2.  Merge with master.

This will cause Circle CI to publish the new version to the site.
