# Python Sitemap Generator

- Version: 0.5.0
- Update: 2026/08/13

Python Site Map Generator uses python multi-threaded approach to read all links accessible through the Web site and generate proper sitemap for SEO purposes. 
Script was meant to use threading technology to allow easy and very fast approach while generating sitemaps for your Web pages.
The script will run under Linux operating system which supports Python 3 language.

Use with caution, if you set thread count too high, it can cause your web server to bug out and cause some links to throw an error, or your IP will be blocked due to firewall threashold.

## USAGE:
- [DEPRECATED] Set up the 'InitialURL' variable to point to Web site which you want to generate sitemap for.
- Set script to executable: `sudo chmod +x python-sitemap-generator.py`.
- Run script: `python3 python-sitemap-generator.py`.

![Python Sitemap Generator](https://raw.github.com/wiejakp/python-sitemap-generator/master/screenshot.png)

```bash
python python-sitemap-generator.py https://example.com/
```

The crawler starts at the given URL, follows same-site links (staying within
the starting host), and writes the results to `sitemap.xml` in the current
directory.

Examples:

```bash
# Crawl a site
python python-sitemap-generator.py https://example.com/

# Show usage help
python python-sitemap-generator.py --help
```

If no URL is provided, the script prints usage instructions and exits.

## Notes & limitations

- Only `text/html` pages are crawled; other content types (e.g. XML, PDFs)
  are not parsed for links.
- `HTTPError` is currently unreachable as a separate exception handler —
  `URLError` catches it first (inherited from the original code).
- The crawler does not honor `robots.txt`.
