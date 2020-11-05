# nov/05/2020 22:33:10 by RouterOS 6.47.7
# software id = 
#
#
#
/interface wireless security-profiles
set [ find default=yes ] supplicant-identity=MikroTik
/ip dhcp-client
add disabled=no interface=ether1
/system clock manual
set time-zone=+06:30
/system ntp client
set enabled=yes primary-ntp=192.168.56.111
/system scheduler
add disabled=yes interval=30s name=config_restore on-event="/system scheduler \
    disable config_restore;system reset-configuration keep-users=yes no-defaul\
    ts=yes run-after-reset=M1.rsc skip-backup=yes;" policy=\
    reboot,read,write,policy,test,password,sniff,sensitive start-date=\
    jan/01/1970 start-time=00:00:00
