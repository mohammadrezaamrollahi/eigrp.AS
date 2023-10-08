import pyshark
capture = pyshark.LiveCapture(interface='ens33')
for packet in capture:
    if 'EIGRP' in packet:
        print (packet.eigrp.delay)
        
