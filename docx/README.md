**Questions & Answers:**

1. **You have security log from Firewall between DMZ and the Internet. How will you use this log for threat detection?**

�) ��������, ����� ���������� ��������� ���������� ��� �������: ����� ���������, ����� � ������� ������ ���� ��������, � ����� ���������� ����������� �������� � ����������� �� ������� �����, ��� ������, � ������������ ����������.

�) ������������ ������������������ ����, ������������ � ���������� ����� ��� ��������� � ��������� �������.

�) ��������� ����������� � ���������� �������������� ���������� �� ������ ������� �����.

1. **You are SOC analyst and you have got an alert from IDS system about SQL-injection on web server. What will you do? How will you investigate (technical aspects)?**

**�) ��������� ����������, ������ ���� IDS � ���-�������. ��� ������������� ������ � ���������� ������������� ��������� IP-�����.**

**�) ������������� ���� �� ������� ������������� ��������, ���������� ����������� �������, � ������ ���� ������.**

**�) ���������� ���� �����, ��������������� ���������� ��������, ��������� ���� ������ �� ���������.**

**�) ������� ���� �� ��� ��������� ������� �������������. ��������� ������� �������� ������������ ��� ����������� � ����������� ������.**

**�) ����������� ������, ������������ �������������, ������� ������ ������������������� ������� �������, ������������� ���������� ��������������� �����.**

**�) ������������ ������� �� ��������� �����, ��������� ����������, ���������� ����� ������� ������������� � �������� �������� ���� ������ ��������� ��������.**

**�) �������� ��������������� ������ � ����������� ������������ ��� �������������� �������� ���������� � �������.**

1. **The most frequent Windows compromise scenarios relate to password hash dump tools usage. Propose detection scenarios (the more the better) of hash dump tools usage. <a name="_hlk34655982"></a>How further illegal usage of stolen credentials can be detected?**

   **�) ������������� ���� ��������������: ����������� ��������� ������� �����, �������������� �����������, ��������� ����������, ������ � ���������������� ����������.**

   **�) ������������ ����������� EDR, XDR � threat intelligence ��� �������������� �������.**

`       `**4.      You work in a company that has two offices (Moscow and Perm) and you have logs from VPN gateway, FW, <a name="_hlk13557714"></a>physical Access Control System. Suggest scenarios for detection possibly threats.**

**VPN**

- ���������� ����������� (��� �������� �������, ������������ ������ �����������).
- ����������������� ����������.
- ������������� ����������� � ������ ���������.

**Firewall**

- ������ ���������� ��� ������� ������� � ���������������� ������.
- ������������� ���������, �����, ������.
- ���������� ��������� ������.

**����**

- ������ ��� �������� �������, ������������� ������ �����.
- ������������� ������ �������� � ������ ������ ������ � �������� ����.
- ������� �������� ������ � ����������� �����.

`    `**5.      If you have antivirus logs, what correlation rules (detection scenarios) can you suggest?**

�) ���������� ��� ������ � ������� �����.

�) ������������� ��������� ������������ ����� ����������� ������.

�) ������� ������� ����������, ��������� � �������.

�) ��������� ���� ��������������..

`  `**6.      You�ve received alert from the corporate proxy that one workstation has connected to the �Malicious site�:**




   1. **What immediate actions would you take to contain the spread?**

**�)** ���� �������� ��������� � ��������� �����, ���������� ���������� ��������� ������� �� ������������� ����. � ������� ����� ������� ������� ��������� � ��������������� ��� �������������, ������������� �� ��� �������, �������� ���������� � ���������� ���������� �, ���� �����������, ����������� �������.

**�)** ������� ���� � ��������������� ��������, ����������� ������������� �� ����������, ����� ������� ��������� ������� ���������.

**�)** ��������� ������� � ������� ������������� �� ��� ������������������ ������������ ��� ����������� ����������� ��������.

**�)** ���������� ������������, ������ ������� ������ ������������, �� ����� �������� ��� ����������� ������ �� ����������� ������, ���� ������������ ������� ������, ����� ������������� ���������� ������.

1. **In which system you can try to get additional information?**

   �) EDR/XDR/���������

   �) SIEM

   �) IPS/IDS

   �) Threat Intelligence Platforms

   �) Firewall

1. **Which stage of the �kill chain� attack this case is?**

   �) ��������� ����� ��� ������ �������� (delivery) ���, ������ ������� �� ����������� ������ ����� ����������� � �� ������ ������� � �������� (command and control).

   7\.	**What system is the following log from and what could you tell about it?**

   **�)** ���, ��������, ��� DNS-�������. UDP-������ ������������ �� �������������� ������, ��� ����� ��������� �� ����������� ���������� ��� ������������ ���������.

   **8.	What is happening according to the following events?**

   �) ������������ kheirkhabarov (���������������� ������������� �������) ����� ������� �������� � ����������� ������������ ������� procdump64.exe, ������� ����������� �� ��� ������� �����. ���� ������� � �������� ����� �������� lsass.exe. LSASS �������� �� �������� ������������, �������� ������ ������������� � ���������� ��������.

   9\.	**What does this message mean? Is this suspicious? Why?**

   �) �� ��������� ������� � ������� PsExec ���� ��������� �������, ��� ������������ �������� ������ PSEXECSVC. ��������� ��� ��������� � 1:05 ����, ����� ������� �������� ���������� � ������� �������.

   10\.	**What can you tell about logs below?**

   �) ������ ��������� ���� misa2.bin, ��������� ��� ��� ��������� ������ � ���������.
   �) ����� PowerShell ������� ����������� ��� ��� ������ ������ �� �������, �� �������������� � ������������� �� Base64.
   �)����������� � ����������� ���� encrypted.exe.
   ��� �������� ������� � ��������� �������� � ������� ������������ �� ����� PowerShell.

11. `  `**What can you tell about this script?**

�) ������ ��������� ������ PowerShell (3.0 � ����), ��������� ��������������, ��������� ������������ ������������, ������������ � ���������� �����, ��������� ������, �������������� �� � ��������� ��� PowerShell-������.

**12.	What event id does registry modification has? What event id does service install and Service Failure has?**

�) ��������� � ������� ����������� ��� ID 4657. ��������� ������ � ID 7045. ������ ����� � ID 7031�7034.

**13.Why files with �chm� extension can be dangerous?** 

�) ����� .chm (HTML Help) ����� ��������� ����������� �������, �������������� ��� ���������� ���� ����� ���������� ��� � ������ ���������� ���������. �� ������ ������� ����������, ��� ������ �� ����������� ������������ ��� �������.

14. **You have logs from DNS server, and you see lot of AXFR requests from one external IP. Is it malicious? If so, why?**

    �) ������� ���������� AXFR-�������� � �������� IP ��������� �� ��������� ���������������� ���������� ���������������, ��������� ����� �� ��������������.

14. **How can you detect Golden Ticket attack?**

    **�)** ����������� SIEM � XDR ��� ��������� ��������������� ���������. ��������, ������� �� ���������� ������� ������� � ����������������� ������������, ������� �������� ������ � ��������, ������ �� �����������.
    **�)** ������������ ������� 4769 � 4768, ����� ���������� �������� � �������� TGS.
    **�)** �������� �������� �� ������ � �������������� �������� ��� ��������, �������� ���� �� �������������� ������� ��� ��� �������� �������.
    **�)** ����� �������� ��������� ���������� � ������������ �������� ������� �������

    **16.	Imagine that attacker compromises your domain controller. Propose a remediation scenario for this situation.**

    **�)** ���������� ������� � ������� �������� �������������, ���������� ���� � ��������� ���������� ������� ������.
    **�)** ��������� ����� � ������ ������� ������, ������������� ����������� � ��������� ������������������� ������� ������.
    **�)** ������������ ���������� ������ �� ��������� �����. ���� ���� ���������� �� ������������� **backup\_secret\_key**, ��������� ������ �������������� � ����� ����������.
    **�)** ������������ �������� ������������, ������� �� � ��������� ����� �������� ����������.
    **�)** ���������� ���������� ���������� ����� ��������������. ��������� ������ ����� � �������� ������������ ��� �������������� �������� ����������.

17. **What is the best PowerShell 5 feature for security team?**
17. **�)** ������ ������� � **Script Block Logging**, ������� ��������� �������������� ������� � �������, ����������� � �������. ��� ������� ��� ������� ���� � ��������� ����������� ����������.

**18.	You have got an alert from EDR solution and you have only this information:**

**Process: flashhelperservice.exe**

**PID: 6508**

**OS Type: windows**

**MD5: 59c34bc243eb2604533b5f08d30944f8**

**SHA-256: ef214626923d76e24ae5299dd16c53b15847e91a97d2eea79ce951c6bead9b7c**

**What can you tell about this case?**

���� FlashHelperService.exe ��� ��������������� � �������������� ������������ ������� �� ���� , � **25 �� 72 �������� ������������** ���������������� ��� ��� �����������. ������ ����������, ��� ���� ������ � ���������� ����� **adware (��������� ��)** � **trojan (��������� ��)**, � ����� ��������� � ��������� **flashserv**..

19. **During the investigation you see this information: JgBjAGgAYwBwAC4AYwBvAG0AIAA2ADUAMAAwADEAIAA+ACAAJABuAHUAbABsAAoAJABlAHgAZQBjAF8AdwByAGEAcABwAGUAcgBfAHMAdAByACAAPQAgACQAaQBuAHAAdQB0ACAAfAAgAE8AdQB0AC0AUwB0AHIAaQBuAGcACgAkAHMAcABsAGkAdABfAHAAYQByAHQAcwAgAD0AIAAkAGUAeABlAGMAXwB3AHIAYQBwAHAAZQByAF8AcwB0AHIALgBTAHAAbABpAHQAKABAACgAIgBgADAAYAAwAGAAMABgADAAIgApACwAIAAyACwAIABbAFMAdAByAGkAbgBnAFMAcABsAGkAdABPAHAAdABpAG8AbgBzAF0AOgA6AFIAZQBtAG8AdgBlAEUAbQBwAHQAeQBFAG4AdAByAGkAZQBzACkACgBJAGYAIAAoAC0AbgBvAHQAIAAkAHMAcABsAGkAdABfAHAAYQByAHQAcwAuAEwAZQBuAGcAdABoACAALQBlAHEAIAAyACkAIAB7ACAAdABoAHIAbwB3ACAAIgBpAG4AdgBhAGwAaQBkACAAcABhAHkAbABvAGEAZAAiACAAfQAKAFMAZQB0AC0AVgBhAHIAaQBhAGIAbABlACAALQBOAGEAbQBlACAAagBzAG8AbgBfAHIAYQB3ACAALQBWAGEAbAB1AGUAIAAkAHMAcABsAGkAdABfAHAAYQByAHQAcwBbADEAXQAKACQAZQB4AGUAYwBfAHcAcgBhAHAAcABlAHIAIAA9ACAAWwBTAGMAcgBpAHAAdABCAGwAbwBjAGsAXQA6ADoAQwByAGUAYQB0AGUAKAAkAHMAcABsAGkAdABfAHAAYQByAHQAcwBbADAAXQApAAoAJgAkAGUAeABlAGMAXwB3AHIAYQBwAHAAZQByAA=**

    ������ ������ ������������ ����� �������������� PowerShell-������. ��:

1. ���������� ������ � UTF-8.
1. ����������� ������ ������ � ��������� ������� ������ �� ��� �����.
1. ������ ����� �������� PowerShell-���, ������� �����������.
1. ������ �����, ��������, �������� �������� �������� � ������� JSON.

20. **You have observed an alert from EDR solution and have this info:**

    **c:\windows\system32\services.exe is launched by explorer.exe is it ok? If it is not what reason of it could be?**

21. ��� �������������, ��������� � ���������� �������� services.exe ����������� ����� wininit.exe. ����� ��������� ����� ����������������� � ������� ������������ ��.** 
21. **You have installed an application on your PC and the application cannot connect to the Internet. There are no antivirus warnings and you can browse the Internet. What is the most likely cause of the problem?**

    ��������� �������:

1. IP-����� ������ ���������� ��� �������� ������������ �� �������.
1. ������� ��������� ������� ������.
1. ���������� �� ������� ���� �������.
1. ���������� ���������� � �� ����� ������������ � ����.

22. **What can you say about this URL �www.iuqerfsodp9ifjaposdfjhgosurijfaewrwergwea.com�?**

    ��� �������� ��� ������ �� �������� ���������������. � ������� ������������ ��� ������������ ��� ���������� ����, �������� ��� ��������������� ������������ ��.

**23.What can you say about this nmap scan report? Are there any security issues in this report?**

�� ������� ����������� OpenSSH ������ 7.2p2 � Apache 1.1. ������������ ������� � Ubuntu (16.04 ��� �����). ���� 80 ������� ����������. ��� ����������� �� SSH ����������� ����������������� �����, ��� ���� ����� RSA-������ ������ ���� ����������� ��� ����������� �������� ������.

OpenSSH ������ 7.2p2 ��������� �����������, ������� **CVE-2016-6210** (������� ���� �������������) � **CVE-2023-38408**.
Apache Struts �������� ���������� **CVE-2011-1772** (XSS-�����).

22. **������������ ������ �� ���� fmarket.stf\admin:1337:aad3b435b51404eeaad3b435b51404ee:bebaecb23aa18f5375628541ff3fb3b8:::**

    bebaecb23aa18f5375628541ff3fb3b8 is password a6_123




 





 


