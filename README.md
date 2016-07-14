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

**YOUR WILL NEED TO SET YOUR MUSE API KEY**

- visit [THE MUSE DEVELOPERS PAGE](https://www.themuse.com/developers)
- Sign up a new application and get an api key
- Paste the api key in the `.env` file next to `MUSE_API_KEY`

## Tests

```
rspec --format documentation

```
## Running locally

This application uses `dalli` to cache results using a local memcached server. If you do not have memcached already running, in a seperate terminal window run `memcached`, then run the command below in seperate terminal window 

```
rails s

```
