# Caddy-Homelab

This is a repository for my slightly customised version of the [Caddy](https://github.com/caddyserver/caddy) web server. Image is built to include the [Gandi DNS module](https://github.com/caddy-dns/gandi) to allow for DNS-01 challenges to take place for my homelab services without exposing a public port, as well as the Caddyfile defining reverse proxy addresses.

The Gandi module requires an environment variable of GANDI_BEARER_TOKEN set to a [Personal Access Token](https://docs.gandi.net/en/managing_an_organization/organizations/personal_access_token.html) with "Manage domain name technical configurations" and "See and renew domain names" permissions.
