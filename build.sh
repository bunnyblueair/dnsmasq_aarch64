cd dnsmasq.git 
make COPTS="-DHAVE_IPSET -DHAVE_BROKEN_RTC -DHAVE_AUTH -DNO_TFTP -DNO_ID -DHAVE_LOOP -DNO_INOTIFY -DNO_DUMPFILE -DNO_GMP  -DHAVE_DNSSEC" CFLAGS="-I/usr/local/include"
cd src
file /usr/local/lib/libnettle.a 
aarch64-linux-gnu-gcc  -o dnsmasq cache.o rfc1035.o util.o option.o forward.o network.o dnsmasq.o dhcp.o lease.o rfc2131.o netlink.o dbus.o bpf.o helper.o tftp.o log.o conntrack.o dhcp6.o rfc3315.o dhcp-common.o outpacket.o radv.o slaac.o auth.o ipset.o pattern.o domain.o dnssec.o blockdata.o tables.o loop.o inotify.o poll.o rrfilter.o edns0.o arp.o crypto.o dump.o ubus.o metrics.o domain-match.o nftset.o   /usr/local/lib/libhogweed.a  /usr/local/lib/libnettle.a 
cd .. 
aarch64-linux-gnu-strip -s -x src/dnsmasq 
cp src/dnsmasq ../dnsmasq 
cp CHANGELOG  ../CHANGELOG
