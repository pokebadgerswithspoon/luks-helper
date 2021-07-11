# luks-helper

Helper scripts to mount and unmount luks secret file. 
Make mountable encrypted volume with [luks](https://gitlab.com/cryptsetup/cryptsetup/blob/master/README.md).

## Dependencies

* losetup
* dd
* cryptsetup
* tune2fs

# Usage

`luksEnv` - setup

Here are env variables to use.
There are two ways to configure scripts:
- tweak the `luksEnv` itself
- export vars within `luksEnv`

`luksCreate` - create your secret file

`luksMount` - mount your secret file

`luksUmount` - unmount it


# Development

Install shellcheck: https://github.com/koalaman/shellcheck#installing

# Kudos

- https://wiki.centos.org/HowTos/EncryptedFilesystem
- https://gitlab.com/cryptsetup/cryptsetup/blob/master/README.md