# BastilleBSD Templates Collection
This repository is a collection of all BastilleBSD templates in a single
repository. The structure mimicks that of ports with templates organized into
sub-directories by type.

To clone this repository use:
```
bastille bootstrap templates
```

To update an existing checkout use:
```
bastille update templates
```

To apply a template from this repository use:
```
bastille template TARGET www/nginx
bastille template TARGET net/asterisk
...
```
