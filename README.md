# bloated-app

A small TypeScript API for the exercise "Put this image on a diet" of the PXL Docker course:
<https://pxl-systems-advanced.github.io/docker-labs/#/exercises/ex-image-diet>

It works, and its image is about seven times larger than it needs to be.

Build and test it:

```bash
docker build -t bloated-app:before .
docker run --rm -p 127.0.0.1:3000:3000 bloated-app:before
curl http://localhost:3000/
curl http://localhost:3000/health
```

Do not change the application source. The exercise is about the `Dockerfile` and the build context only.
