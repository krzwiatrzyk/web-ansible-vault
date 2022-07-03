# web-ansible-vault
Encrypt/Decrypt ansible var file with provided password using serveless function

## Used

- [OpenFaaS Classic Watchdog](https://docs.openfaas.com/architecture/watchdog/)

### Explanations 

1. How to pass HEADers arguments (all headers are set as environment variables)
2. How to pass Query Params (query params are set as env variable `Http_Query`)
3. How to pass body (for classic watchdog body is passed as stdin to function)