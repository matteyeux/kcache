# Kcache

Kcache is a kernelcache encrypt/decrypt utility, you can use it to decrypt iOS kernelcache.

```
usage: kcache <input> [OPTIONS]
-i, --in <filename>
-w, --wd <directory>
-k, --key <key> AES key
-v, --iv  <iv>  AES init vector
```



Kcache works with iOS 10 armv7 kernelcaches (soon arm64 ?)

```
$ ./kcache -i kernelcache.release.n41
iv:          301c0db0f6fc3a92c34f34b2dff5d92f
key:         65c351330f824889fe25b14e2d0cb5e291991a749f13761b825a70f317f005aa
in:          kernelcache.release.n41
wd:          ./kcache_outputs

opening:     kernelcache.release.n41
magic:       Img3
filesize:    11360396
contentsize: 11360376
certarea:    11360376
filetype:    krnl

0x00000000 0x00000004: TYPE
0x00000020 0x00ad577f: DATA
0x00ad57ac 0x00000004: SEPO
0x00ad57c8 0x00000038: KBAG
0x00ad5814 0x00000038: KBAG
creating:    ./kcache_outputs/kernelcache.data

AES decrypt:(len: 11360127 pad: 15)

plaintext (excerpt):
        18 78 fa 95 ed 11 b3 2a 95 da 4b 35 16 4e b2 6e | .x.....*..K5.N.n
        d8 48 c8 3b eb 70 c4 b9 b0 3f 26 40 8c c9 26 75 | .H.;.p...?&@..&u
        64 3f 50 fc 22 c9 77 39 c4 96 d1 b2 8c 19 b4 b2 | d?P.".w9........
        71 39 af 86 fe a4 e6 e1 b1 e7 4a 70 03 db e8 c8 | q9........Jp....
        53 20 58 fe 88 d6 27 ff 20 c5 9c 1d 0c b8 37 9f | S X...'. .....7.
        42 0d 27 eb 9e 6d 20 aa 72 e0 32 8b 35 33 47 41 | B.'..m .r.2.53GA
        d6 fd 11 11 64 1d 33 4c 9f cd f7 fa fa 47 6e 18 | ....d.3L.....Gn.
        e6 23 7c 88 ff 42 f0 9e 53 26 aa 22 9c b7 5b fa | .#|..B..S&."..[.

decrypted (excerpt):
        76 a9 2c 7e e2 91 3e 8f 65 67 17 68 2e 40 e5 21 | v.,~..>.eg.h.@.!
        dc dc bb 6f 13 6f fe cb ef d6 ac 20 33 a5 50 cf | ...o.o..... 3.P.
        82 79 36 c6 c9 98 19 ed f8 42 f7 31 06 12 51 f9 | .y6......B.1..Q.
        43 c7 4a 6b 82 c7 98 52 3f 05 03 84 91 e8 45 36 | C.Jk...R?.....E6
        74 ed d0 fc fe 23 98 d9 9f f1 cf 73 6c 42 97 10 | t....#.....slB..
        61 7c 07 f1 ca a2 b9 8e 0b 88 f3 a1 d1 81 26 f8 | a|............&.
        b0 38 c0 28 6f 0f f7 ed 7c 5c 03 94 1b 8a 6a ec | .8.(o...|\....j.
        4f c7 3d 90 ac ec f4 ce 79 c0 1d 2b 08 e2 13 8b | O.=.....y..+....

creating:    ./kcache_outputs/kernelcache.data.pt
creating:    ./kcache_outputs/kernelcache.hdr
creating:    ./kcache_outputs/kernelcache.lzss
creating:    ./kcache_outputs/kernelcache.bin
```



### TODO

- Add im4p support
- Test kcache on macOS/OSX

###  Installation

I wrote a Makefile to build kcache run `make` & `sudo make install` to build and install

### Credits

Created by [Petter Wahlman](https://twitter.com/badeip)

Improved by [matteyeux](https://twitter.com/matteyeux)