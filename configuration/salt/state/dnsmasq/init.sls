dnsmasq:
  pkg.installed: []
  service.running:
    - watch:
      - file: /etc/dnsmasq.conf
      - file: /etc/dnsmasq.d/*
        
/etc/dnsmasq.conf:
  file.managed:
    - source: salt://dnsmasq/config/dnsmasq.conf
    - user: root
    - group: root
    - mode: 644
    
/etc/dnsmasq.d/10-consul:    
  file.append:
    - text: "server=/consul/127.0.0.1#8600"
    - makedirs: True
    
/etc/dnsmasq.d/10-proxy:    
  file.append:
    - text: "server=192.168.0.5"
    - makedirs: True