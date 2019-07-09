#!/bin/bash
export KIMAI_CMD=kimai
$KIMAI_CMD -b list-active
echo "---"
echo "Active measurements: (Click to stop)"
$KIMAI_CMD -a list-active
echo "---"
echo "Recent measurements:"
$KIMAI_CMD -a list-recent
echo "---"
echo "Open Kimai in browser | href='$($KIMAI_CMD url)'"
echo "Reload | refresh=true"