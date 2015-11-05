DNSMadeEasy API CLI
===================

Helpfully, DNSMadeEasy provide us with an [API](http://www.dnsmadeeasy.com/integration/restapi/) along with [documentation](http://www.dnsmadeeasy.com/pdf/API-Docv2.pdf) and a simple [CLI wrapper for the API](https://support.dnsmadeeasy.com/index.php?/Knowledgebase/Article/View/124/15/dnsmeapipl).

This project just runs that script inside a Docker container. This means you should be able to run something along the lines of the following in order to get a list of managed domains:

```
$ export DNSMADEEASY_API_KEY="key"
$ export DNSMADEEASY_API_SECRET_KEY="secret"
$ docker run --env DNSMADEEASY_API_KEY --env DNSMADEEASY_API_SECRET_KEY samcrang/dnsmeapi "http://api{.sandbox}.dnsmadeeasy.com/V2.0/dns/managed"
```
