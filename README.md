# Nitecore Framework

## Cryptography api helper

This api allows to generate a cryptographic key and a cryptographic signature for a given string.
Written in Elixir offers a lot of security features like: HMAC, RSA, AES, etc. In addition to that, offers a high concurrency level, speed and scalability.

In this repository you can find a file called `k6.js` for stress and test this api. Compared to Node.js, this api is x19 faster.

PRODUCTION ENVIRONMENT: `https://api.nitecore.cf/`

---

## HEALTH CHECK

Ping to production environment with the following command:
```sh
curl --location --request GET 'https://api.nitecore.cf/health-check'
```

Localhost:
```js
url = `http://localhost:8080/health-check`;
```

```sh
curl --location --request GET 'http://localhost:8080/health-check'
```

## GENERAL DOCUMENTATION

Body for make request:

```json
{
    "string": "string to hash",
    "encoding": "base16 || base32 || base64"
}
```

Response:

```json
{
    "result": {
        "data": "hash"
    }
}
```

## SHA DOCUMENTATION

SHA METHOD:

-   sha
-   sha3

SHA ALGORITHM:

-   sha1 (Not recommended - vulnerabilities found - "SHAttered")
-   sha224
-   sha256
-   sha384
-   sha512

```js
NiteCoreUrl = `https://api.nitecore.cf/${SHA_METHOD}/${SHA_ALGORITHM}`;
localHostUrl = `http://localhost:8080/${SHA_METHOD}/${SHA_ALGORITHM}`;
```

Example SHA request:

```sh
curl --location --request POST 'http://localhost:8080/sha/sha1' \
--header 'Content-Type: application/json' \
--data-raw '{
    "string": "somerandomstring"",
    "encoding": "base16"
}'
```

Example SHA response:

```json
{
    "result": {
        "data": "949053be2f233008e6d0d1b2d8657ed11a46332a"
    }
}
```

## BLAKE DOCUMENTATION

BLAKE METHOD:

-   blake

BLAKE ALGORITHM:

-   blake2b
-   blake2s

```js
NiteCoreUrl = `https://api.nitecore.cf/${BLAKE_METHOD}/${BLAKE_ALGORITHM}`;
localHostUrl = `http://localhost:8080/${BLAKE_METHOD}/${BLAKE_ALGORITHM}`;
```

Example BLAKE request:

```sh
curl --location --request POST 'http://localhost:8080/blake/blake2b' \
--header 'Content-Type: application/json' \
--data-raw '{
    "string": "somerandomstring",
    "encoding": "base32"
}'
```

Example BLAKE response:

```json
{
    "result": {
        "data": "kbcftwqioird4li7d4l5viso6dswurhntnfyqdnkebi4qcrw6yu5z47nasklm57ouekkfjjvby5bz24cxar4rik4qelbik3ce4seudi="
    }
}
```
