ASM = nasm
SRC_DIR = src
BUILD_DIR = build

# Create build dir if missing
$(shell mkdir -p $(BUILD_DIR))

.PHONY: all run clean

all: $(BUILD_DIR)/main_floppy.img

$(BUILD_DIR)/main_floppy.img: $(BUILD_DIR)/main.bin
	cp $< $@
	truncate -s 1440k $@

$(BUILD_DIR)/main.bin: $(SRC_DIR)/main.asm
	$(ASM) $< -f bin -o $@

run: $(BUILD_DIR)/main_floppy.img
	qemu-system-x86_64 -fda $< -boot a

clean:
	rm -rf $(BUILD_DIR)
