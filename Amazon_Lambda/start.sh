# Check which command to use for automatic opening the browser
if command -v xdg-open >/dev/null 2>&1; then
  xdg-open http://localhost:3000 && python -m SimpleHTTPServer 3000
else
  open http://localhost:3000 && python -m SimpleHTTPServer 3000
fi
