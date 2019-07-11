#!/bin/bash
# <bitbar.title>Kimai2-cmd</bitbar.title>
# <bitbar.version>v0.1</bitbar.version>
# <bitbar.author>infeeeee</bitbar.author>
# <bitbar.author.github>infeeeee</bitbar.author.github>
# <bitbar.desc>Client for kimai2 the open source self hosted timetracker</bitbar.desc>
# <bitbar.image>http://www.hosted-somewhere/pluginimage</bitbar.image>
# <bitbar.dependencies>kimai2-cmd</bitbar.dependencies>
# <bitbar.abouturl>https://github.com/infeeeee/kimai2-cmd-argos/</bitbar.abouturl>

# settings
# path to kimai:
kimaipath=kimai

# beginning of script
$kimaipath -b list-active
echo "---"
echo "Active measurements: (Click to stop)"
$kimaipath -a list-active
echo "---"
echo "Recent measurements:"
$kimaipath -a list-recent
echo "---"
echo "Open Kimai in browser | href='$($kimaipath url)'"
echo "Reload | refresh=true"