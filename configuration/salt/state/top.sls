base:
  '*':
    - consul
    - dnsmasq
    - collectd
    - elastic.filebeat
    - elastic.packetbeat
    - ntp
  'G@roles:consul-bootstrap':
    - consul.bootstrap
  'G@roles:consul-server':
    - consul.server
  'G@roles:consul-client':
    - consul.client
  'G@roles:monitoring-server':
    - influxdb
    - grafana 
  'G@roles:worker':
    - dnsmasq.gnos
    - celery
    - airflow
    - airflow.load-workflows
    - airflow.worker
    - butler
    - cwltool
    - docker    
  'G@roles:tracker':
    - airflow
    - airflow.load-workflows
    - airflow.server
    - jsonmerge
    - butler
    - genome-reference.grch37d5_sanger_zipped
  'G@roles:db-server':
    - postgres
    - run-tracking-db
    - grafana.createdb
    - airflow.airflow-db
    - sample-tracking-db
  'G@roles:job-queue':
    - rabbitmq
  'G@roles:elasticsearch':
    - elastic.search
    - elastic.logstash
    - elastic.kibana
    - celery
  'G@roles:germline':
    - biotools.freebayes
    - biotools.htslib
    - biotools.samtools
    - biotools.delly
  'G@roles:R':
    - R  


  
    
  
    
    


    