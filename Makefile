GO     := GO15VENDOREXPERIMENT=1 go
NVCC   := nvcc


all: bridge.o nvidia_exporter

bridge.o:bridge.c
	$(NVCC) -c bridge.c -o bridge.o

nvidia_exporter:
	@echo ">> build nvidia-exporter"
	@$(GO) build nvidia_exporter.go nvml.go


clean:
	@echo ">> remove nvidia-exporter"
	@rm nvidia_exporter bridge.o
