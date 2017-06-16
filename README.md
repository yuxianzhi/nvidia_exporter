# NVIDIA GPU Telemetry Exporter for Prometheus

Write an exporter to push Nvidia Gpu data to Prometheus.

## Requirements

* CUDA ToolKit - Modifications may need to be made in nvml.go to point to your install, you can use this command to find cuda.h path

```bash
locate cuda.h
```

* CUDA NVML - Modifications may need to be made in nvml.go to point to your install, you can use this command to find libnvidia-ml.so path

```bash
locate libnvidia-ml.so | grep -o ".*nvidia-[0-9][0-9][0-9]" | head -n 1
```
## Build
    make

## Usage

    ./nvidia_exporter [flags]

### Flags

* __`web.listen-address`:__ Listen on this address for requests (default: `":9114"`).

* __`web.telemetry-path`:__ Path under which to expose metrics (default: `"/metrics"`).

## License

Portions of nvml.go are based on David Ressman [go-nvml](https://github.com/davidr/go-nvml). It has been cleaned up and modified for this exporter.

MIT
