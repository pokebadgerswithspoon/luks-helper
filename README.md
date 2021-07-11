# luks-helper
Helper scripts to mount and unmount luks secret file

## Dependencies

* losetup
* dd
* cryptsetup
* tune2fs

### Development

Install shellcheck: https://github.com/koalaman/shellcheck#installing
she
## Setup

Check *luksEnv.sh* for env variables in use. There are two ways to configure scripts.

* tweak your luksEnv.sh directrly
* put your tweaks in a separate file and invoke it infornt on *luksEnv.sh*

## Usage

./luksMount.sh - will mount your secret file
./luksUmount.sh - will unmount it
./luksCreate.sh - use it once to create your secret file

## Kudos

https://wiki.centos.org/HowTos/EncryptedFilesystem
