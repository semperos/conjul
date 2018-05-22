# GraalVM Clojure Example

Minimal Graalvm + Clojure example.

## Usage

1. Download the _GraalVM Community Edition 1.0 RC1_, currently available [on GitHub](https://github.com/oracle/graal/releases). Put it at the root of this project.
2. `docker build . -t graalvm -f Dockerfile.graalvm`
3. `docker build . -t rp-conjul`

Once you've successfully built the `rp-conjul` Docker image, you can run it with:

```
docker run --rm -it rp-conjul
```
