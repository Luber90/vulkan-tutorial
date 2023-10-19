CFLAGS = -g -std=c++17 -O2

LDFLAGS = -lglfw -lvulkan -lpthread -lX11 -lXxf86vm -lXrandr -lXi

VulkanTest: main.cpp
	g++ $(CFLAGS) -o Vulkan main.cpp $(LDFLAGS)

.PHONY: test clean debug

test: Vulkan
	./Vulkan

debug:
	gdb Vulkan

clean:
	rm -f Vulkan