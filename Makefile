# Makefile 示例：编译 hello.c

# 定义变量
CC = gcc          # 指定使用的编译器
CFLAGS = -Wall    # 编译器标志，-Wall 表示开启所有警告
TARGET = hello    # 定义目标可执行文件的名称
SOURCE = hello.c  # 定义源代码文件的名称

# 默认目标 (第一个目标是默认目标)
all: $(TARGET)

# 规则：如何从源文件生成目标可执行文件
$(TARGET): $(SOURCE)
	$(CC) $(CFLAGS) $(SOURCE) -o $(TARGET)

# 清理目标：删除编译生成的文件
clean:
	rm -f $(TARGET)

# 伪目标声明 (告诉 make 这些不是真实的文件名)
.PHONY: all clean
