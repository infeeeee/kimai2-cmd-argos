# Kimai2-cmd-argos

Argos/Kargos/Bitbar script for Kimai2. Only useable with [kimai2-cmd](https://github.com/infeeeee/kimai2-cmd)

## Installation

### Prerequisites for all platforms:

- Install [Kimai2](https://www.kimai.org/) on a server, and create an API password
- Download and setup [kimai2-cmd](https://github.com/infeeeee/kimai2-cmd). Minimum version: 0.2.0

### Argos - Gnome

Install Argos from Gnome extensions: https://extensions.gnome.org/extension/1176/argos/

Link kimai2-cmd as `kimai` with the following command:
```
sudo ln -s /path/to/kimai2-cmd-linux /usr/bin/kimai
```
This is very important, otherways it won't work. If you link it as other name you have to modify the shell script

Download the script file to `~/.config/argos`:

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

Install BitBar: https://getbitbar.com/

Set up the bitbar plugin directory, download the script and move it to the bitbar plugin directory:

```
curl https://raw.githubusercontent.com/infeeeee/kimai2-cmd-argos/master/kimai.1r.1m.sh -o kimai.1r.1m.sh
mv kimai.1r.1m.sh /path/to/plugin/dir/
```
Make sure it executable:
```
sudo chmod +x /path/to/plugin/dir/kimai.1r.1m.sh
```
Fill the bitbar settings in kimai2-cmd's settings.ini. Add the full path to the kimai2-cmd executable:
```
[bitbar]
kimaipath=/path/to/kimai2-cmd-macos
```
Optionally, if you linked kimai2-cmd to `/usr/bin` you can use a path like this: `/usr/bin/kimai`

## Usage

If you click on an active measurement it will be stopped. 

If you click on a recent mesurement it will be restarted.

Click reload to reload

## Troubleshooting

If something is not working make sure that kimai2-cmd works. If kimai2-cmd is not working please open an issue there!

## License

MIT