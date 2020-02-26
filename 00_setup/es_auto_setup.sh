#1 - Run `curl http://localhost:9200`
#You should get somthing like:
#{
#  "name" : "node1",
#  "cluster_name" : "my-cluster",
#  "cluster_uuid" : "SZdgmzxFSnW2IMVxvVj-9w",
#  "version" : {
#    "number" : "7.5.0",
#    "build_flavor" : "default",
#    "build_type" : "tar",
#    "build_hash" : "e9ccaed468e2fac2275a3761849cbee64b39519f",
#    "build_date" : "2019-11-26T01:06:52.518245Z",
#    "build_snapshot" : false,
#    "lucene_version" : "8.3.0",
#    "minimum_wire_compatibility_version" : "6.8.0",
#    "minimum_index_compatibility_version" : "6.0.0-beta1"
#  },
#  "tagline" : "You Know, for Search"
#}
#Check the "name" and "cluster_name" value. Other field might differ

#autosetup:

curl -L -O https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.5.2-darwin-x86_64.tar.gz
tar -xzf elasticsearch-7.5.2-darwin-x86_64.tar.gz
echo 'cluster.name: "my-cluster"' > elasticsearch-7.5.2/config/elasticsearch.yml
echo 'node.name: "node1"' >> elasticsearch-7.5.2/config/elasticsearch.yml
curl -O https://artifacts.elastic.co/downloads/kibana/kibana-7.5.2-darwin-x86_64.tar.gz
tar -xzf kibana-7.5.2-darwin-x86_64.tar.gz
curl -O https://artifacts.elastic.co/downloads/logstash/logstash-7.5.2.tar.gz
tar -xvf logstash-7.5.2.tar.gz
cp ~/42/bootcamp_data-engineering/day01/ingest-pipeline.conf logstash-7.5.2/config/
echo "config.support_escapes: true" > logstash-7.5.2/config/logstash.yml

