require ["include", "environment", "variables", "relational", "comparator-i;ascii-numeric", "spamtest"];

# Generated: Do not run this script on spam messages
#if address "from" "AddressToReject@domain.tld"

if allof (address :contains "from" 
# here you should add to the array every single address from a legitimate sender that is arriving to an unexpected address
["binance.com"], 

# here you should input the address for which you do NOT have an account or association to the domains in the `from` field, as those are likely to be spoofed
address :is "to" ["YOUR ADDRESS"])

{

fileinto "trash";

} 


