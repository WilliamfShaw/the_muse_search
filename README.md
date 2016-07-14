## The Muse Job Search

This is a simple rails application with aims to make use of the `jobs` endpoint supplied by [The Muse](https://www.themuse.com/)

## Requirements

- Ruby '2.3.0'
- Memcache `gem install memcached`
- Rails
- Postgres (9.4+)


## Setup

```
git clone git@github.com:WilliamfShaw/the_muse_search.git
cd the_muse_search
bin/setup

```

## Tests

```
rspec --format documentation

```
## Running locally

```
rails s

```

This application uses `dalli` to cache results using a local memcache server. If you do not have memcache running as a background dameon, in a seperate terminal window run `memcache`
