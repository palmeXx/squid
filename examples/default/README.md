# Example with default config

# Run docker container

```bash 
docker run \
  -p 3128:3128 \
  -v "`pwd`/squid.conf:/etc/squid/squid.conf" \
  -v "/path/on/host:/var/cache/squid" \
  palme/squid:latest
```