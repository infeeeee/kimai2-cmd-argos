#!/bin/bash
kimai -b list-active
echo "---"
echo "Active measurements: (Click to stop)"
kimai -a list-active
echo "---"
echo "Recent measurements:"
kimai -a list-recent
echo "---"
echo "Open Kimai in browser | href='$(kimai url)'"
echo "Reload | refresh=true"