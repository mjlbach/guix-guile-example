I've recently been going through the Guile reference manual to touch up on my scheme. One issue I found, is that guile isn't packaged for my distributions (Fedora or NixOS). I decided to try out guix, but I was a bit frustrated at the state of documentaiton on writing self-contained mixed C/Guile packages.

```
guix build -f main.scm
```
