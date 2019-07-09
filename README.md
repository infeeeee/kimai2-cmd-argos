# Kimai2-cmd-argos

Argos/Kargos/Bitbar script for Kimai2. Only useable with [kimai2-cmd](https://github.com/infeeeee/kimai2-cmd)

## Installation

### Prerequisites for all platforms:

- Install [Kimai2](https://www.kimai.org/) on a server, and create an API password
- Download and setup [kimai2-cmd](https://github.com/infeeeee/kimai2-cmd). Minimum version: 0.2.0
  - Link kimai2-cmd as `kimai` with the following command:
     ```
     sudo ln -s /path/to/kimai2-cmd-os /usr/bin/kimai
     ```
  - Alternatively, you can adjust the KIMAI_CMD variable in `kimai.1r.1m.sh`
- Make the bash script executable `chmod +x kimai.1r.1m.sh`
 
### Argos - Gnome

Install Argos from Gnome extensions: https://extensions.gnome.org/extension/1176/argos/

Download the script file to `~/.config/argos`

```
curl https://raw.githubusercontent.com/infeeeee/kimai2-cmd-argos/master/kimai.1r.1m.sh -o ~/.config/argos/kimai.1r.1m.sh
```
Make sure it executable:
```
sudo chmod +x ~/.config/argos/kimai.1r.1m.sh
```
It should appear on your top bar. To modify it's location and refresh rate modify the file name according to argos documentation: 
https://github.com/p-e-w/argos/

### Kargos - KDE

Not tested yet, it should work, similar to Argos install

### Bitbar - Mac

Install BitBar:
- Install BitBar, eg `brew cask install bitbar`
- Create a BitBar plugin directory
- Start BitBar and point it to your plugin directory

Add the Kimai plugin:
- Clone this repository somewhere
- Symlink the plugin into your BitBar plugin directory
- If you don't want the global kimai-cmd, then you can adjust the KIMAI_CMD in the script, eg:
 `export KIMAI_CMD="/usr/local/bin/node /Users/infeeeee/kimai2-cmd/kimai2-cmd.js"`
- Reload BitBar from its dropdown

## Usage

## Troubleshooting

If something is not working make sure that kimai2-cmd works. If kimai2-cmd is not working please open an issue there!

## License

MIT