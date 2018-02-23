# passcheck-sh

Check a password against the HIBP database. Uses the range feature for k-Anonymity of the V2 API,
so it only sends the first 5 characters of the SHA-1 hash over the wire.


It is _very_ simple, has no dependencies other than the basic tools curl, grep and cut. There is no
input validation or error handling (apart from what these 3 tools provide themselves).
Due to its simple nature it can be easily used as a filter with other tools.


The return value is the counter representing how often the given password appeared in breaches as returned by the HIBP API.

## Usage

```shell
./passcheck.sh <password>
echo "password" | ./passcheck.sh
```

## Resources

- [HaveIBeenPwned API documentation](https://haveibeenpwned.com/API/v2#SearchingPwnedPasswordsByRange)
