## Status
[![pipeline status](https://gitlab.com/bastillebsd-templates/zsh-antigen/badges/master/pipeline.svg)](https://gitlab.com/bastillebsd-templates/zsh-antigen/commits/master)

## zsh-antigen
Bastille Template: zsh-antigen

Fetch and apply this template with:

```shell
bastille bootstrap https://gitlab.com/BastilleBSD-Templates/zsh-antigen
bastille template TARGET BastilleBSD-Templates/zsh-antigen
```

This template will place/update the `antigen.zsh` script and a `.zshrc` in
root's home folder. On first login antigen will bootstrap all required
components.

Note: if you want to add the `.zshrc` to all new users this needs to be done in
the release and not the jail.

Place the `.zshrc` into `bastille/releases/$RELEASE/usr/share/skel/dot.zshrc`.

Note: PKG requires `ca_root_nss` and `git-lite` as dependencies of antigen.
