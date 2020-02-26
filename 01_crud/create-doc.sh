# PUT : send a resource to the server (will put or update a doc named : index/type/id):
curl -X PUT "http://localhost:9200/twitter/_doc/1?pretty" -H 'Content-Type: application/json' -d' 
{ "user" : "popol", "post_date" : "02 12 2015", "message" : "trying out elasticsearch" } '

# POST : post a request that modifies server state
# will generate an _id server side and will index the document with this _id.
curl -X POST "http://localhost:9200/twitter/_doc/?pretty" -H 'Content-Type: application/json' -d' 
{ "user" : "popol", "post_date" : "20 01 2019", "message" : "still trying out elasticsearch" } '
