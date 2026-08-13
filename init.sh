#!/bin/bash
set -e

# Create virtual environment if it doesn't exist
if [ ! -d venv ]; then
    python3 -m venv venv
fi

# Activate it
source venv/bin/activate

# Install dependencies for app.py:
#   lxml           - XML generation (etree) and HTML parsing
#   beautifulsoup4 - required by lxml.html.soupparser
#   var_dump       - debugging output (imported by app.py)
pip3 install --upgrade pip
pip3 install lxml beautifulsoup4 var_dump

echo ""
echo "Dependencies installed. Run the app with:"
echo "  source venv/bin/activate && python3 app.py"
