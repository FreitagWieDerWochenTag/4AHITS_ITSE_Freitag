# nmap Ausgabe 4

```shell
┌──(parallels㉿kali-linux-2024-2)-[~]
└─$ nmap --script=vuln --top-ports 5 172.20.10.2
Starting Nmap 7.95 ( https://nmap.org ) at 2025-11-07 19:10 CET
Pre-scan script results:
| broadcast-avahi-dos: 
|   Discovered hosts:
|     224.0.0.251
|   After NULL UDP avahi packet DoS (CVE-2011-1002).
|_  Hosts are all up (not vulnerable).
                                                         
┌──(parallels㉿kali-linux-2024-2)-[~]
└─$ nmap --script=vuln -p 21,80 172.20.10.2
Starting Nmap 7.95 ( https://nmap.org ) at 2025-11-07 19:16 CET
Pre-scan script results:
| broadcast-avahi-dos: 
|   Discovered hosts:
|     224.0.0.251
|   After NULL UDP avahi packet DoS (CVE-2011-1002).
|_  Hosts are all up (not vulnerable).
Nmap scan report for 172.20.10.2
Host is up (0.0011s latency).

PORT   STATE SERVICE
21/tcp open  ftp
| ftp-vsftpd-backdoor: 
|   VULNERABLE:
|   vsFTPd version 2.3.4 backdoor
|     State: VULNERABLE (Exploitable)
|     IDs:  BID:48539  CVE:CVE-2011-2523
|       vsFTPd version 2.3.4 backdoor, this was reported on 2011-07-04.
|     Disclosure date: 2011-07-03
|     Exploit results:
|       Shell command: id
|       Results: uid=0(root) gid=0(root)
|     References:
|       http://scarybeastsecurity.blogspot.com/2011/07/alert-vsftpd-download-backdoored.html
|       https://www.securityfocus.com/bid/48539
|       https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2011-2523
|_      https://github.com/rapid7/metasploit-framework/blob/master/modules/exploits/unix/ftp/vsftpd_234_backdoor.rb
80/tcp open  http
|_http-vuln-cve2017-1001000: ERROR: Script execution failed (use -d to debug)
|_http-dombased-xss: Couldn't find any DOM based XSS.
|_http-stored-xss: Couldn't find any stored XSS vulnerabilities.
| http-sql-injection: 
|   Possible sqli for queries:
|     http://172.20.10.2:80/mutillidae/index.php?page=framing.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?do=toggle-hints%27%20OR%20sqlspider&page=home.php
|     http://172.20.10.2:80/mutillidae/?page=text-file-viewer.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=register.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=set-background-color.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=user-poll.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=pen-test-tool-lookup.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=show-log.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=source-viewer.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=usage-instructions.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=add-to-your-blog.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=show-log.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=documentation%2Fhow-to-access-Mutillidae-over-Virtual-Box-network.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=view-someones-blog.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=capture-data.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=notes.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=php-errors.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=login.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?username=anonymous&page=password-generator.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=browser-info.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?do=toggle-security%27%20OR%20sqlspider&page=home.php
|     http://172.20.10.2:80/mutillidae/index.php?page=documentation%2Fvulnerabilities.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=site-footer-xss-discussion.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=installation.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=change-log.htm%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=credits.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=source-viewer.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=add-to-your-blog.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=view-someones-blog.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=user-info.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=arbitrary-file-inclusion.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=dns-lookup.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=secret-administrative-pages.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=login.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=user-info.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=text-file-viewer.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=captured-data.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=html5-storage.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=credits.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=home.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/dav/?C=N%3BO%3DD%27%20OR%20sqlspider
|     http://172.20.10.2:80/dav/?C=M%3BO%3DA%27%20OR%20sqlspider
|     http://172.20.10.2:80/dav/?C=S%3BO%3DA%27%20OR%20sqlspider
|     http://172.20.10.2:80/dav/?C=D%3BO%3DA%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=framing.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=text-file-viewer.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=register.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=set-background-color.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=user-poll.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=pen-test-tool-lookup.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=show-log.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=source-viewer.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=add-to-your-blog.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=show-log.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=documentation%2Fhow-to-access-Mutillidae-over-Virtual-Box-network.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=view-someones-blog.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=capture-data.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=login.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=login.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?username=anonymous&page=password-generator.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=browser-info.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=documentation%2Fvulnerabilities.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=site-footer-xss-discussion.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=installation.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=change-log.htm%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=credits.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=source-viewer.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=add-to-your-blog.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=view-someones-blog.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=user-info.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=arbitrary-file-inclusion.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=dns-lookup.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=secret-administrative-pages.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=rene-magritte.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=user-info.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=text-file-viewer.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=captured-data.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=html5-storage.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=credits.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=home.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=framing.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?do=toggle-hints%27%20OR%20sqlspider&page=home.php
|     http://172.20.10.2:80/mutillidae/?page=text-file-viewer.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=register.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=set-background-color.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=user-poll.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=pen-test-tool-lookup.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=show-log.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=source-viewer.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=usage-instructions.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=add-to-your-blog.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=show-log.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=documentation%2Fhow-to-access-Mutillidae-over-Virtual-Box-network.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=view-someones-blog.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=capture-data.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=notes.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=php-errors.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=login.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?username=anonymous&page=password-generator.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=browser-info.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?do=toggle-security%27%20OR%20sqlspider&page=home.php
|     http://172.20.10.2:80/mutillidae/index.php?page=documentation%2Fvulnerabilities.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=site-footer-xss-discussion.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=installation.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=change-log.htm%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=credits.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=source-viewer.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=add-to-your-blog.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=view-someones-blog.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=user-info.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=arbitrary-file-inclusion.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=dns-lookup.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=secret-administrative-pages.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=login.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=user-info.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=text-file-viewer.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=captured-data.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=html5-storage.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=credits.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=home.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=framing.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=text-file-viewer.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=register.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=set-background-color.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=user-poll.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=pen-test-tool-lookup.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=show-log.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=source-viewer.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=add-to-your-blog.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=installation.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=show-log.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=documentation%2Fhow-to-access-Mutillidae-over-Virtual-Box-network.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=view-someones-blog.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=capture-data.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=login.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?username=anonymous&page=password-generator.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=browser-info.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=documentation%2Fvulnerabilities.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=change-log.htm%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=site-footer-xss-discussion.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=credits.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=user-info.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=add-to-your-blog.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=login.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=source-viewer.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=view-someones-blog.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=user-info.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=arbitrary-file-inclusion.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=dns-lookup.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=secret-administrative-pages.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=home.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=html5-storage.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=text-file-viewer.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=captured-data.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=credits.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=framing.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=text-file-viewer.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=register.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=set-background-color.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=user-poll.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=pen-test-tool-lookup.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=show-log.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=source-viewer.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=add-to-your-blog.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=installation.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=show-log.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=documentation%2Fhow-to-access-Mutillidae-over-Virtual-Box-network.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=view-someones-blog.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=capture-data.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=login.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?username=anonymous&page=password-generator.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=browser-info.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=documentation%2Fvulnerabilities.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=change-log.htm%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=site-footer-xss-discussion.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=credits.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=home.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=add-to-your-blog.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=login.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=source-viewer.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=user-info.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=arbitrary-file-inclusion.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=dns-lookup.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=secret-administrative-pages.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=view-someones-blog.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=user-info.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=text-file-viewer.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=captured-data.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=html5-storage.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=credits.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=framing.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=text-file-viewer.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=register.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=set-background-color.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=user-poll.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=pen-test-tool-lookup.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=show-log.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=source-viewer.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=add-to-your-blog.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=documentation%2Fvulnerabilities.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=show-log.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=documentation%2Fhow-to-access-Mutillidae-over-Virtual-Box-network.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=view-someones-blog.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=capture-data.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=login.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?username=anonymous&page=password-generator.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=browser-info.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=installation.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=site-footer-xss-discussion.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=change-log.htm%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=credits.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=login.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=add-to-your-blog.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=source-viewer.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=html5-storage.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=user-info.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=arbitrary-file-inclusion.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=dns-lookup.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=secret-administrative-pages.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=user-info.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=credits.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=text-file-viewer.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=view-someones-blog.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=captured-data.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=home.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=framing.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=text-file-viewer.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=register.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=set-background-color.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=user-poll.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=pen-test-tool-lookup.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=show-log.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=source-viewer.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=add-to-your-blog.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=show-log.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=documentation%2Fhow-to-access-Mutillidae-over-Virtual-Box-network.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=view-someones-blog.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=capture-data.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=documentation%2Fvulnerabilities.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=login.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?username=anonymous&page=password-generator.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=browser-info.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=installation.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=site-footer-xss-discussion.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=change-log.htm%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=credits.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=login.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=add-to-your-blog.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=source-viewer.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=html5-storage.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=user-info.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=arbitrary-file-inclusion.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=dns-lookup.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=secret-administrative-pages.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=view-someones-blog.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=text-file-viewer.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=captured-data.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=credits.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=home.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=user-info.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=framing.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=text-file-viewer.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=register.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=set-background-color.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=user-poll.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=pen-test-tool-lookup.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=show-log.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=source-viewer.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=add-to-your-blog.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=installation.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=show-log.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=documentation%2Fhow-to-access-Mutillidae-over-Virtual-Box-network.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=view-someones-blog.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=capture-data.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=login.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?username=anonymous&page=password-generator.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=browser-info.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=documentation%2Fvulnerabilities.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=change-log.htm%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=site-footer-xss-discussion.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=credits.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=login.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=add-to-your-blog.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=arbitrary-file-inclusion.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=source-viewer.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=html5-storage.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=user-info.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?do=toggle-security%27%20OR%20sqlspider&page=pen-test-tool-lookup.php
|     http://172.20.10.2:80/mutillidae/index.php?page=dns-lookup.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=secret-administrative-pages.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=view-someones-blog.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?do=toggle-hints%27%20OR%20sqlspider&page=pen-test-tool-lookup.php
|     http://172.20.10.2:80/mutillidae/index.php?page=text-file-viewer.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=captured-data.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=credits.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=home.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=user-info.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=framing.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=text-file-viewer.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=register.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=set-background-color.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=user-poll.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=pen-test-tool-lookup.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=show-log.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=source-viewer.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=add-to-your-blog.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=show-log.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=documentation%2Fhow-to-access-Mutillidae-over-Virtual-Box-network.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=view-someones-blog.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=capture-data.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=login.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?username=anonymous&page=password-generator.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=browser-info.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=documentation%2Fvulnerabilities.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=site-footer-xss-discussion.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=installation.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=change-log.htm%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=credits.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=source-viewer.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=add-to-your-blog.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=html5-storage.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=user-info.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=arbitrary-file-inclusion.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=dns-lookup.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=secret-administrative-pages.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=login.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=user-info.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=text-file-viewer.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=view-someones-blog.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=captured-data.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=credits.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=home.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=framing.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=text-file-viewer.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=register.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=set-background-color.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=user-poll.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=pen-test-tool-lookup.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=show-log.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=source-viewer.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=add-to-your-blog.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=show-log.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=view-someones-blog.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=capture-data.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=documentation%2Fhow-to-access-Mutillidae-over-Virtual-Box-network.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=login.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?username=anonymous&page=password-generator.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=browser-info.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=documentation%2Fvulnerabilities.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=site-footer-xss-discussion.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=installation.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=change-log.htm%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=credits.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=source-viewer.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=add-to-your-blog.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=html5-storage.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=user-info.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=arbitrary-file-inclusion.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=dns-lookup.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=secret-administrative-pages.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=login.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=user-info.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=text-file-viewer.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=view-someones-blog.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=captured-data.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=credits.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=home.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=framing.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=text-file-viewer.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=register.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=set-background-color.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=user-poll.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=pen-test-tool-lookup.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=show-log.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=source-viewer.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=add-to-your-blog.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=show-log.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=documentation%2Fhow-to-access-Mutillidae-over-Virtual-Box-network.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=view-someones-blog.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=capture-data.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=login.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?username=anonymous&page=password-generator.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=browser-info.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=documentation%2Fvulnerabilities.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=site-footer-xss-discussion.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=installation.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=change-log.htm%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=credits.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=source-viewer.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=add-to-your-blog.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=html5-storage.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=user-info.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=arbitrary-file-inclusion.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=dns-lookup.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=secret-administrative-pages.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/?page=login.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=view-someones-blog.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=text-file-viewer.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=captured-data.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=credits.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=home.php%27%20OR%20sqlspider
|     http://172.20.10.2:80/mutillidae/index.php?page=user-info.php%27%20OR%20sqlspider
|   Possible sqli for forms:
|     Form at path: /mutillidae/index.php, form's action: index.php. Fields that might be vulnerable:
|       choice
|       choice
|       choice
|       choice
|       choice
|       choice
|       choice
|       choice
|       choice
|       choice
|       choice
|       choice
|_      initials
|_http-trace: TRACE is enabled
| http-slowloris-check: 
|   VULNERABLE:
|   Slowloris DOS attack
|     State: LIKELY VULNERABLE
|     IDs:  CVE:CVE-2007-6750
|       Slowloris tries to keep many connections to the target web server open and hold
|       them open as long as possible.  It accomplishes this by opening connections to
|       the target web server and sending a partial request. By doing so, it starves
|       the http server's resources causing Denial Of Service.
|       
|     Disclosure date: 2009-09-17
|     References:
|       http://ha.ckers.org/slowloris/
|_      https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2007-6750
| http-csrf: 
| Spidering limited to: maxdepth=3; maxpagecount=20; withinhost=172.20.10.2
|   Found the following possible CSRF vulnerabilities: 
|     
|     Path: http://172.20.10.2:80/dvwa/
|     Form id: 
|     Form action: login.php
|     
|     Path: http://172.20.10.2:80/mutillidae/?page=text-file-viewer.php
|     Form id: id-bad-cred-tr
|     Form action: index.php?page=text-file-viewer.php
|     
|     Path: http://172.20.10.2:80/mutillidae/index.php?page=register.php
|     Form id: id-bad-cred-tr
|     Form action: index.php?page=register.php
|     
|     Path: http://172.20.10.2:80/mutillidae/index.php?page=set-background-color.php
|     Form id: id-bad-cred-tr
|     Form action: index.php?page=set-background-color.php
|     
|     Path: http://172.20.10.2:80/mutillidae/index.php?page=user-poll.php
|     Form id: idpollform
|     Form action: index.php
|     
|     Path: http://172.20.10.2:80/mutillidae/?page=source-viewer.php
|     Form id: id-bad-cred-tr
|_    Form action: index.php?page=source-viewer.php
| http-enum: 
|   /tikiwiki/: Tikiwiki
|   /test/: Test page
|   /phpinfo.php: Possible information file
|_  /phpMyAdmin/: phpMyAdmin
MAC Address: 52:54:00:12:34:56 (QEMU virtual NIC)

Nmap done: 1 IP address (1 host up) scanned in 355.99 seconds
```

