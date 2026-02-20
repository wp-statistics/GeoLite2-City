# GeoLite2-City - Free IP Geolocation Database

[![npm version](https://img.shields.io/npm/v/geolite2-city.svg)](https://www.npmjs.com/package/geolite2-city)
[![npm downloads](https://img.shields.io/npm/dm/geolite2-city.svg)](https://www.npmjs.com/package/geolite2-city)
[![License](https://img.shields.io/badge/license-CC%20BY--SA%204.0-green)](https://creativecommons.org/licenses/by-sa/4.0/)
[![GitHub Stars](https://img.shields.io/github/stars/wp-statistics/GeoLite2-City?style=social)](https://github.com/wp-statistics/GeoLite2-City)

Free MaxMind GeoLite2-City database for IP geolocation. Get city-level location data from any IP address. Automatically updated and served via jsDelivr CDN.

**Website:** [geo.wp-statistics.com](https://geo.wp-statistics.com)

#### Last updated: 2026-02-20

---

## Features

- **City-Level Accuracy** - Get country, city, coordinates, timezone, and more
- **Auto-Updated** - Database updated automatically every Tuesday & Friday
- **Fast CDN** - Served via jsDelivr with global edge locations
- **No Authentication** - Direct download, no API keys required
- **Free Forever** - Open source under CC BY-SA 4.0 license

---

## Quick Start

### Direct Download

```
https://cdn.jsdelivr.net/npm/geolite2-city/GeoLite2-City.mmdb.gz
```

### PHP

```php
use GeoIp2\Database\Reader;

$reader = new Reader('/path/to/GeoLite2-City.mmdb');
$record = $reader->city('128.101.101.101');

echo $record->country->name;  // 'United States'
echo $record->city->name;     // 'Minneapolis'
```

### Node.js

```javascript
const { Reader } = require('@maxmind/geoip2-node');

const reader = await Reader.open('./GeoLite2-City.mmdb');
const response = reader.city('128.101.101.101');

console.log(response.country.names.en);  // 'United States'
console.log(response.city.names.en);     // 'Minneapolis'
```

### Python

```python
import geoip2.database

reader = geoip2.database.Reader('./GeoLite2-City.mmdb')
response = reader.city('128.101.101.101')

print(response.country.name)  # 'United States'
print(response.city.name)     # 'Minneapolis'
```

### WordPress (WP Statistics)

```php
use WP_Statistics\Service\Geolocation\GeolocationFactory;

$location = GeolocationFactory::getLocation('128.101.101.101');
echo $location['city'];  // 'Minneapolis'
```

---

## Database Info

| Property | Value |
|----------|-------|
| **CDN URL** | `https://cdn.jsdelivr.net/npm/geolite2-city/GeoLite2-City.mmdb.gz` |
| **npm** | `npm install geolite2-city` |
| **Update Schedule** | Every Tuesday & Friday (automatic) |
| **Size** | ~68 MB (compressed) |
| **Format** | MaxMind DB (MMDB) |
| **License** | [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/) |

---

## Update Schedule

This database is **automatically updated** via GitHub Actions:

- **Schedule:** Every Tuesday and Friday at 06:00 UTC
- **Source:** [MaxMind GeoLite2](https://dev.maxmind.com/geoip/geolite2-free-geolocation-data)
- **Distribution:** Published to npm, served via jsDelivr CDN

---

## Related Resources

- **Documentation:** [geo.wp-statistics.com](https://geo.wp-statistics.com)
- **DB-IP Alternative:** [DbIP-City-lite](https://github.com/wp-statistics/DbIP-City-lite)
- **Country Database:** [GeoLite2-Country](https://github.com/wp-statistics/GeoLite2-Country)
- **WP Statistics:** [wordpress.org/plugins/wp-statistics](https://wordpress.org/plugins/wp-statistics/)

---

## Attribution

This database is provided by [MaxMind](https://www.maxmind.com/). When using this database, please include appropriate attribution as required by the [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/).

---

## License

GeoLite2-City by MaxMind is licensed under [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/).

Maintained by [VeronaLabs](https://veronalabs.com) and the [WP Statistics](https://wp-statistics.com) team.
