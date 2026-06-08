# Mjolnir 2.0.0

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

# preview-only mode
sudo mjolnir <domainname> [Options] -dryrun

# self-install to /usr/bin/mjolnir (overwrites existing)
sudo bash mjolnir -

# self-update from local git checkout, then refresh /usr/bin/mjolnir
sudo mjolnir --self-update
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

### Dry Run (No Changes Applied)

Preview what Mjolnir would do without writing files, restarting Apache, or running certbot.

```bash
sudo mjolnir example.com -F -dryrun

# also works with dryrun before action
sudo mjolnir example.com -dryrun -F
```

### Self Install

Installs `mjolnir` to `/usr/bin/mjolnir`, overwriting the existing binary/script.

```bash
sudo bash mjolnir -
```

### Self Update

Updates from the current git checkout using a fast-forward pull, then reinstalls to `/usr/bin/mjolnir`.

If no git checkout is detected (or git pull fails), it falls back to downloading from the public repo source.

```bash
sudo mjolnir --self-update
```

Notes:

- Git mode protects local changes by blocking update when the checkout is dirty.
- Fallback mode downloads from `https://github.com/Cazgem/mjolnir` public source and does not require git credentials.
- Fallback mode automatically tries both `main` and `master` raw branch URLs.

Developed by Cazgem (https://cazgem.com) for internal use as part of Divisi Labs and Polyphony (https://divisilabs.com/getpolyphony).

## Multi-Server Pattern (Live + Dev)

If your live and dev servers use the same folder layout (for example `/srv/www/<domain>/html` and `/srv/www/<domain>/dev`), run Mjolnir independently on each machine.

### Recommended Setup

1. Install Apache and this script on both servers.
2. Keep `WEBDIR` and Apache paths identical on both hosts.
3. Point DNS to each machine's public IP as needed:
	- `example.com` and `www.example.com` -> live server IP
	- `dev.example.com` -> dev server IP
4. Run Mjolnir on each host only for the domains that host serves.

### Typical Commands

On live:

```bash
sudo mjolnir example.com -F
```

On dev:

```bash
sudo mjolnir example.com -D
```

If certbot is installed on each server, issue certs on each host after DNS is correct:

```bash
sudo mjolnir example.com -C
```

### Operational Notes

- This script writes local Apache config files only on the machine where it is run.
- The same domain can exist on both hosts as long as DNS records direct traffic to the intended server.
- Use `sudo mjolnir anything -configtest` to validate Apache config syntax before restart-level changes.
