require ["include", "environment", "variables", "relational", "comparator-i;ascii-numeric", "spamtest", "fileinto", "imap4flags"];

if allof (header :comparator "i;unicode-casemap" :contains "Subject" 
# add elements to this list that you have commonly seen in the `subject` field of the spam you receive
["elon musk"],

# here input the address that you're getting spam on 
address :is "to" ["YOUR ADDRESS"])

{

addflag "\\Seen";
fileinto "trash";

} 


