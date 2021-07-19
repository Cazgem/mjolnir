# Mjolnir 1.0.3

```javascript
sudo bash mjolnir example.com -FC

or

sudo mjolnir example.com -FC

//Optional Dependencies

certbot
```

This library is meant to act as a back-end tool to generate the necessary files and configurations for creations of new virtual hosts (web domains).

## BEFORE YOU BEGIN

If you wish to use secure ssl (https), make sure to install certbot as this script has the ability to incorporate certbot to automate this process as much as possible.

## Implementation

```javascript
sudo mjolnir <domainname> [Options]
```

## USE

### Full Suite w/ Certbot

Virtual Host Config, Enabling website, creation of public and dev subdirectories, index.php and htaccess creation, SSL Certificates for secure https via Certbot.

```javascript
sudo bash mjolnir example.com -FC
```

### Full Suite w/ NO Certbot

Virtual Host Config, Enabling website, creation of public and dev subdirectories, index.php and htaccess creation.

```javascript
sudo bash mjolnir example.com -F
```

### Remove Website

Remove a website's folders and config files, disable site and restart apache.

```javascript
sudo bash mjolnir example.com -R
```

### Run Certbot

Virtual Host Config, Enabling website, creation of public and dev subdirectories, index.php and htaccess creation.

```javascript
sudo bash mjolnir example.com -SSL

or

sudo bash mjolnir example.com -C
```

### Set Virtual Host

Overwrites the Virtual Host file for the website given with the newest, updated version defined in the script.

```javascript
sudo bash mjolnir example.com -V
```

Developed by Cazgem (https://cazgem.com) for internal use as part of Divisi Labs and Polyphony (https://divisilabs.com/getpolyphony).
