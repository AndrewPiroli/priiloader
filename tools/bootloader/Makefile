
TARGET		:=	$(notdir $(CURDIR))
SOURCES		:=	.
LOADERPATH	:=	"../../loader/loader.bin"

CPPFILES	:=	$(foreach dir,$(SOURCES),$(notdir $(wildcard $(dir)/*.cpp)))
SFILES		:=	$(foreach dir,$(SOURCES),$(notdir $(wildcard $(dir)/*.S))) $(foreach dir,$(SOURCES),$(notdir $(wildcard $(dir)/*.s)))

ifeq ($(UNAME),Linux)
OUTPUT := $(TARGET)
else
OUTPUT := $(TARGET)
endif

.PHONY: $(LOADERPATH) clean

all:
ifneq ("$(wildcard $(loader.bin))","")
	@rm loader.bin
endif
	@echo copying loader...
	@cp $(LOADERPATH) loader.bin
	@echo building $(OUTPUT)...
	@g++ $(CPPFILES) $(SFILES) -o $(OUTPUT)
	
clean:
	@echo cleaning...
	@rm -fr $(OUTPUT) loader.bin