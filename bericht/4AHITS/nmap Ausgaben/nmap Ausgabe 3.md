# nmap Ausgabe 3

```shell
┌──(parallels㉿kali-linux-2024-2)-[/usr/share/nmap/scripts]
└─$ nmap --script banner.nse 172.20.10.2
Starting Nmap 7.95 ( https://nmap.org ) at 2025-11-07 18:43 CET
Nmap scan report for 172.20.10.2
Host is up (0.0022s latency).
Not shown: 977 closed tcp ports (reset)
PORT     STATE SERVICE
21/tcp   open  ftp
|_banner: 220 (vsFTPd 2.3.4)
22/tcp   open  ssh
|_banner: SSH-2.0-OpenSSH_4.7p1 Debian-8ubuntu1
23/tcp   open  telnet
|_banner: \xFF\xFD\x18\xFF\xFD \xFF\xFD#\xFF\xFD'
25/tcp   open  smtp
|_banner: 220 metasploitable.localdomain ESMTP Postfix (Ubuntu)
53/tcp   open  domain
80/tcp   open  http
111/tcp  open  rpcbind
139/tcp  open  netbios-ssn
445/tcp  open  microsoft-ds
512/tcp  open  exec
|_banner: \x01Where are you?
513/tcp  open  login
514/tcp  open  shell
1099/tcp open  rmiregistry
1524/tcp open  ingreslock
|_banner: root@metasploitable:/#
2049/tcp open  nfs
2121/tcp open  ccproxy-ftp
|_banner: 220 ProFTPD 1.3.1 Server (Debian) [::ffff:172.20.10.2]
3306/tcp open  mysql
| banner: >\x00\x00\x00\x0A5.0.51a-3ubuntu5\x00\x19\x00\x00\x00lne-N$fV\x
|_00,\xAA\x08\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\...
5432/tcp open  postgresql
5900/tcp open  vnc
|_banner: RFB 003.003
6000/tcp open  X11
6667/tcp open  irc
| banner: :irc.Metasploitable.LAN NOTICE AUTH :*** Looking up your hostna
|_me...\x0D\x0A:irc.Metasploitable.LAN NOTICE AUTH :*** Couldn't resol...
8009/tcp open  ajp13
8180/tcp open  unknown
MAC Address: 52:54:00:12:34:56 (QEMU virtual NIC)

Nmap done: 1 IP address (1 host up) scanned in 15.30 seconds
                                                                                                                                                                                      
┌──(parallels㉿kali-linux-2024-2)-[/usr/share/nmap/scripts]
└─$ nmap --script http-title.nse 172.20.10.2
Starting Nmap 7.95 ( https://nmap.org ) at 2025-11-07 18:44 CET
Nmap scan report for 172.20.10.2
Host is up (0.0015s latency).
Not shown: 977 closed tcp ports (reset)
PORT     STATE SERVICE
21/tcp   open  ftp
22/tcp   open  ssh
23/tcp   open  telnet
25/tcp   open  smtp
53/tcp   open  domain
80/tcp   open  http
|_http-title: Metasploitable2 - Linux
111/tcp  open  rpcbind
139/tcp  open  netbios-ssn
445/tcp  open  microsoft-ds
512/tcp  open  exec
513/tcp  open  login
514/tcp  open  shell
1099/tcp open  rmiregistry
1524/tcp open  ingreslock
2049/tcp open  nfs
2121/tcp open  ccproxy-ftp
3306/tcp open  mysql
5432/tcp open  postgresql
5900/tcp open  vnc
6000/tcp open  X11
6667/tcp open  irc
8009/tcp open  ajp13
8180/tcp open  unknown
|_http-title: Apache Tomcat/5.5
MAC Address: 52:54:00:12:34:56 (QEMU virtual NIC)

Nmap done: 1 IP address (1 host up) scanned in 0.83 seconds
                                                                                                                                                                                      
┌──(parallels㉿kali-linux-2024-2)-[/usr/share/nmap/scripts]
└─$ nmap --script dns-brute.nse 172.20.10.2
Starting Nmap 7.95 ( https://nmap.org ) at 2025-11-07 18:44 CET
Nmap scan report for 172.20.10.2
Host is up (0.0022s latency).
Not shown: 977 closed tcp ports (reset)
PORT     STATE SERVICE
21/tcp   open  ftp
22/tcp   open  ssh
23/tcp   open  telnet
25/tcp   open  smtp
53/tcp   open  domain
80/tcp   open  http
111/tcp  open  rpcbind
139/tcp  open  netbios-ssn
445/tcp  open  microsoft-ds
512/tcp  open  exec
513/tcp  open  login
514/tcp  open  shell
1099/tcp open  rmiregistry
1524/tcp open  ingreslock
2049/tcp open  nfs
2121/tcp open  ccproxy-ftp
3306/tcp open  mysql
5432/tcp open  postgresql
5900/tcp open  vnc
6000/tcp open  X11
6667/tcp open  irc
8009/tcp open  ajp13
8180/tcp open  unknown
MAC Address: 52:54:00:12:34:56 (QEMU virtual NIC)

Host script results:
|_dns-brute: Can't guess domain of "172.20.10.2"; use dns-brute.domain script argument.

Nmap done: 1 IP address (1 host up) scanned in 0.29 seconds
                                                                                                                                                                                      
┌──(parallels㉿kali-linux-2024-2)-[/usr/share/nmap/scripts]
└─$ nmap --script targets-sniffer.nse 172.20.10.2
Starting Nmap 7.95 ( https://nmap.org ) at 2025-11-07 18:45 CET
Nmap scan report for 172.20.10.2
Host is up (0.0026s latency).
Not shown: 977 closed tcp ports (reset)
PORT     STATE SERVICE
21/tcp   open  ftp
22/tcp   open  ssh
23/tcp   open  telnet
25/tcp   open  smtp
53/tcp   open  domain
80/tcp   open  http
111/tcp  open  rpcbind
139/tcp  open  netbios-ssn
445/tcp  open  microsoft-ds
512/tcp  open  exec
513/tcp  open  login
514/tcp  open  shell
1099/tcp open  rmiregistry
1524/tcp open  ingreslock
2049/tcp open  nfs
2121/tcp open  ccproxy-ftp
3306/tcp open  mysql
5432/tcp open  postgresql
5900/tcp open  vnc
6000/tcp open  X11
6667/tcp open  irc
8009/tcp open  ajp13
8180/tcp open  unknown
MAC Address: 52:54:00:12:34:56 (QEMU virtual NIC)

Nmap done: 1 IP address (1 host up) scanned in 9.39 seconds
                                                                                                                                                                                      
┌──(parallels㉿kali-linux-2024-2)-[/usr/share/nmap/scripts]
└─$ nmap --script ftp-anon.nse 172.20.10.2
Starting Nmap 7.95 ( https://nmap.org ) at 2025-11-07 18:45 CET
Nmap scan report for 172.20.10.2
Host is up (0.0027s latency).
Not shown: 977 closed tcp ports (reset)
PORT     STATE SERVICE
21/tcp   open  ftp
|_ftp-anon: Anonymous FTP login allowed (FTP code 230)
22/tcp   open  ssh
23/tcp   open  telnet
25/tcp   open  smtp
53/tcp   open  domain
80/tcp   open  http
111/tcp  open  rpcbind
139/tcp  open  netbios-ssn
445/tcp  open  microsoft-ds
512/tcp  open  exec
513/tcp  open  login
514/tcp  open  shell
1099/tcp open  rmiregistry
1524/tcp open  ingreslock
2049/tcp open  nfs
2121/tcp open  ccproxy-ftp
3306/tcp open  mysql
5432/tcp open  postgresql
5900/tcp open  vnc
6000/tcp open  X11
6667/tcp open  irc
8009/tcp open  ajp13
8180/tcp open  unknown
MAC Address: 52:54:00:12:34:56 (QEMU virtual NIC)

Nmap done: 1 IP address (1 host up) scanned in 0.36 seconds

```

