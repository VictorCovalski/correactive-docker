# CorReactive Docker Image
This is a containerized version of Correactive, a correlation engine based on esper.

I don't claim ownership or rights for CorReactive or Esper.

Please, refer to the official documentation to learn how to use CorReactive.

## Links
[Download CorReactive](https://sourceforge.net/projects/correactive/)
[Official Documentation](https://sourceforge.net/p/correactive/wiki/FAQ/)
[Docker Hub Repository](https://hub.docker.com/r/victorjunes/correactive/)

## Quick Start
Change "path/to/config" to the location of your CorReactive configurations.

```
docker run --name correactive -e MEMORY_OPTIONS="-Xms512m -Xmx512m" -v "path/to/config/files:/conf" victorjunes/correactive
```

## Building
Download CorReactive 0.1 from the official download link. [Sourceforge](https://sourceforge.net/projects/correactive/)
Place the zip file in the same folder as this repository
```
    chmod +x run.sh
    ./run.sh CorReactive0.1.zip
```

## Configuration
    CorReactive configuration files are located in /conf folder.