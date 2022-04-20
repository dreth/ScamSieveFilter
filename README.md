# ScamSieveFilter

Simple sieve filter for crypto-related scam attempts and phishing emails. 

## Filters

### `filter1.sieve`

- Filters by address (from) and by subject.
- This does most of the filtering regardless of which one of your addresses the spam email is being sent to.

### `filter2.sieve`

- Filters by address (from) if the email is being sent to whatever address you pick.
- This is useful to filter emails from addresses with a spoofed sender (from) which send emails to the address or addresses which receive the core of the spam. 
