BUILD_DIR = bin
RENDERED_DIR = rendered
EXECUTABLE = $(BUILD_DIR)/rt
IMAGE = $(RENDERED_DIR)/img.ppm

default: $(EXECUTABLE)

main.cpp: vec3.h

$(EXECUTABLE): main.cpp $(BUILD_DIR)
	g++ main.cpp -o $@

draw: $(RENDERED_DIR)
	$(EXECUTABLE) > $(IMAGE)

$(BUILD_DIR):
	mkdir $(BUILD_DIR)

$(RENDERED_DIR):
	mkdir $(RENDERED_DIR)
