## kgetty


Replacements for getty/sudo.

kgetty reads the loginname, and calls ksu for authorization.

kgetty-persistent asks kerberos for a ticket, and keeps it.
So you are able to login once with your password, 
and don't need to enter it again when logging in on other virtual terminals.
Therefore it's only usable for local logins.


ksudo and su ask kerberos for a ticket as well, and keep it.
So you have to enter a password only once, subsequent
calls don't need the password anymore.


All wrappers do need a running and configured kerberos server.

Compiled statically with minilib (https://github.com/michael105/minilib) kgetty and kgetty-persistent do have 4.8kB and 3.7kB; su 658 Bytes and ksudo 921 Bytes.

Within the tools there is no cryptography involved, they just call the kerberos tools.

Please note, kerberos is not everywhere legal. 
(Something I don't get, but it's not my business.)

The code of the getty's is based on the suckless' getty.

Within ./bin/ there are statically linked binaries for linux x64.
