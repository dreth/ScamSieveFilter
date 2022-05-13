require ["include", "environment", "variables", "relational", "comparator-i;ascii-numeric", "spamtest", "fileinto", "imap4flags"];

if allof (address :all :comparator "i;unicode-casemap" :contains "From"
# add elements to this list that you have commonly seen in the `from` field of the spam you receive
["elon musk"], 

# here input the address that you're getting spam on 
address :all :comparator "i;unicode-casemap" :is ["To", "Cc", "Bcc"] ["YOUR ADDRESS"])

{

addflag "\\Seen";
fileinto "trash";

} 


