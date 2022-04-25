require ["include", "environment", "variables", "relational", "comparator-i;ascii-numeric", "spamtest"];

# Generated: Do not run this script on spam messages
#if address "from" "AddressToReject@domain.tld"

if allof (address :contains "from" 
# add elements to this list that you have commonly seen in the `from` field of the spam you receive
["elon musk"], 

header :comparator "i;unicode-casemap" :contains "Subject" 
# add elements to this list that you have commonly seen in the `subject` field of the spam you receive
["elon musk"],

# here input the address that you're getting spam on 
address :is "to" ["YOUR ADDRESS"])

{

fileinto "trash";

} 


