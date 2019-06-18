BUILD_DIR = bin
RENDERED_DIR = rendered
EXECUTABLE = $(BUILD_DIR)/rt
IMAGE = $(RENDERED_DIR)/img.ppm

default: $(EXECUTABLE)

$(EXECUTABLE): main.cpp hitable_list.h sphere.h camera.h metal.h util.h vec3.h $(BUILD_DIR)
	g++ main.cpp -o $@ -g

draw: $(RENDERED_DIR) $(EXECUTABLE)
	$(EXECUTABLE) > $(IMAGE)

$(BUILD_DIR):
	mkdir $(BUILD_DIR)

$(RENDERED_DIR):
	mkdir $(RENDERED_DIR)
