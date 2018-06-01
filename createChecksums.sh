#!/bin/bash

(
    echo '# MD5';
    checksum -a md5 ./linux/native-app-bundle-linux*.tar ./win32/native-app-setup.exe ./mac/native-app-bundle-mac.tar
    echo
) > md5.md
(
    echo '# SHA256';
    checksum -a sha256 ./linux/native-app-bundle-linux*.tar ./win32/native-app-setup.exe ./mac/native-app-bundle-mac.tar
) > sha256.md

(cat md5.md; cat sha256.md) > checksums.md
