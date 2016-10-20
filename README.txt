
Presenting the slides
=====================

If external markdown files are used (recommended for large presentations) the slides have
to be presented from a HTTP server. Two very easy solutions are:
- ./startup.sh (runs the Python command and opens http://localhost:8000 in a browser window)
OR
- cd slides && python -m SimpleHTTPServer
OR
- cd slided && npm install http-server && ./node_modules/http-server/bin/http-server

Open slide notes (and preview) with `s`
Change screen to black with `b`



Exporting the slides to PDF
===========================

(Chrome or Chromium browser are required for the export)
- Open the presentation with the link; http://localhost:8000?print-pdf
- Open the print dialog; CMD+P
- "Save as PDF"
- Change Margin to None
- Enable "Background Graphics"
- "Save"
