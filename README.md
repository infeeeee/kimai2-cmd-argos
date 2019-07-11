# Kimai2-cmd-argos

Argos/Kargos/Bitbar script for Kimai2. Only useable with [kimai2-cmd](https://github.com/infeeeee/kimai2-cmd)

## Installation

### Prerequisites for all platforms:

- Install [Kimai2](https://www.kimai.org/) on a server, and create an API password
- Download and setup [kimai2-cmd](https://github.com/infeeeee/kimai2-cmd)

### Argos - Gnome

Install Argos from Gnome extensions: https://extensions.gnome.org/extension/1176/argos/

Link kimai2-cmd as `kimai` with the following command:
```
sudo ln -s /path/to/kimai2-cmd-linux /usr/bin/kimai
```
If you don't do this you have to change the path in kimai2-cmd's settings.ini

Download the script file to `~/.config/argos`:

```
curl https://raw.githubusercontent.com/infeeeee/kimai2-cmd-argos/master/kimai.1r.1m.sh -o ~/.config/argos/kimai.1r.1m.sh
```
Make sure it's executable:
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
Make sure it's executable:
```
sudo chmod +x /path/to/plugin/dir/kimai.1r.1m.sh
```
Check the bitbar settings in kimai2-cmd's settings.ini. Add the **full path** to the kimai2-cmd executable:
```
[argos_bitbar]
kimaipath=/path/to/kimai2-cmd-macos
```
Optionally, if you linked kimai2-cmd to `/usr/bin` you can use a path like this: `/usr/bin/kimai`

## Usage

If you click on an active measurement it will be stopped. 

If you click on a recent mesurement it will be restarted.

Click reload to reload

## Settings

### Settings in the script

You shouldn't change here anything, if you linked the executable to `/usr/bin`

If you don't want to link it, add the path to kimai on line 13, after the `=` sign like this:

```
# settings
# path to kimai:
kimaipath=/path/to/kimai2-cmd-macos
```

### Settings in the script filename

The number before the last dot means the update interval, you can change it to something else if you want, default is `1m` which means 1 minute.

The value before that is it's location, only works on linux, Bitbar ignores this value. The default is `1r` Means, it's on the right side of the top bar. More info in the argos documentation: https://github.com/p-e-w/argos/

### Settings in kimai2-cmd's settings.ini

You can find this settings in kimai2-cmd's settings.ini

```
[argos_bitbar]
kimaipath=/path/to/kimai2-cmd-macos
buttonlength=10
```

`kimaipath`: On mac you have to use the full path to kimai2-cmd here. On linux you can use alias. The default value is the full path to the executable, on linux it's simply `kimai`

`buttonlength`: The length of the always visible button in characters. Only applies if there is an active measurement. Default is `10`

## Troubleshooting

If something is not working make sure that kimai2-cmd works. If kimai2-cmd is not working please open an issue there!

## License

MIT