# less-watch

## Description

Simpless is a Docker image bundled with:

* [Node](https://nodejs.org/)
* [Less CSS](http://lesscss.org/)
* [Simpless](https://github.com/royriojas/simpless)

## Usage

1. Define a `simpless.conf.js` in the container current directory:

```javascript
module.exports = function () {
  return {
    example: {
      files: [
        {
          src: 'less/example.less',
          dest: 'css/example.css'
        }
      ]
    }
  };
};
```

2. Run it:

```shell
$ docker run --rm -v `pwd`:/app -w /app \
	-e SIMPLESS_WATCH=yes \
	-e SIMPLESS_TARGET=example \
    -ti omab/simpless
```
