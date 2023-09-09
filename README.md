# Homelab

## setup

Variable setup: 

```bash
echo "CF_API_EMAIL=you@example.com" >> proxy/.env
echo "CF_DNS_API_TOKEN=yourcloudflaretoken" >> proxy/.env
echo "DOMAIN=yourdomain.com" >> proxy/.env

echo "PG_PASS=$(pwgen -s 40 1)" >> auth/.env
echo "AUTHENTIK_SECRET_KEY=$(pwgen -s 50 1)" >> auth/.env
echo "DOMAIN=yourdomain.com" >> auth/.env

echo "WIREGUARD_PRIVATE_KEY=yourwireguardkey" >> torrent/.env
echo "WIREGUARD_ADDRESSES=yourwireguardip/32" >> torrent/.env
echo "SERVER_CITIES=yourcity" >> torrent/.env
echo "DOMAIN=yourdomain.com" >> torrent/.env
```

## To-do: 

- [ ] replace hard coded domain in `dnsmasq/hosts`
- [ ] replace domain in `traefik.yml`
- [ ] replace domain in `middleware.yml`
