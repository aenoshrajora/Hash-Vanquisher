
<h1 align="center">
  <br>
  <a href="https://github.com/aenoshrajora/Hash-Vanquisher"><img src="https://image.ibb.co/bSwkMe/bitmap.png" alt="Hash Vanquisher"></a>
  <br>
  Hash Vanquisher
  <br>
</h1>

<h4 align="center">Why crack hashes when you can bust them?</h4>

<p align="center">
  <a href="https://github.com/aenoshrajora/Hash-Vanquisher/releases">
    <img src="https://img.shields.io/github/release/aenoshrajora/Hash-Vanquisher.svg">
  </a>
  <a href="https://github.com/s0md3v/Hash-Vanquisher/issues?q=is%3Aissue+is%3Aclosed">
      <img src="https://img.shields.io/github/issues-closed-raw/aenoshrajora/Hash-Vanquisher.svg">
  </a>
</p>

## Features
- Automatic hash type identification
- Supports MD5, SHA1, SHA256, SHA384, SHA512
- Can extract & crack hashes from a file
- Can find hashes from a directory, recursively
- Multi-threading

## Insallation & Usage
> **Note:** Run Hash Vanquisher with python3.
> Also, Hash-Buster uses some APIs for hash lookups, check the source code if you are paranoid.

Hash-Buster can be run directly from the python script but I highly suggest you to install it with `make install`

After the installation, you will be able to access it with `hashquisher` command.

### Cracking a single hash

You don't need to specify the hash type. Hash Vanquisher will identify and *crack* it under 3 seconds.

**Usage:** `hashquisher -s <hash>`
### Finding hashes from a directory

Yep, just specify a directory and Hash Vanquisher will go through all the files and directories present in it, looking for hashes.

**Usage:** `hashquisher -d /root/Documents`
### Cracking hashes from a file

Hash Vanquisher can find your hashes even if they are stored in a file like this
```
simple@gmail.com:21232f297a57a5a743894a0e4a801fc3
{"json@gmail.com":"d033e22ae348aeb5660fc2140aec35850c4da997"}
surrondedbytext8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918surrondedbytext
```

**Usage:** `hashquisher -f /root/hashes.txt`

### Specifiying number of threads

Multi-threading can incredibly minimize the overall speed when you have a lot of hashes to crack by making requests in parallel.

`hashquisher -f /root/hashes.txt -t 10`

### License
Hash-Vanquisher is licensed under [MIT License](https://github.com/aenoshrajora/Hash-Vanquisher/blob/master/LICENSE).
