#
# A Makefile that compiles all .c and .s files in "src" and "res" 
# subdirectories and places the output in a "obj" subdirectory
#

# If you move this project you can change the directory 
# to match your GBDK root directory (ex: GBDK_HOME = "C:/GBDK/"
GBDK_HOME = /home/mreichelt/workspace/gameboy_development/gbdk/

LCC = $(GBDK_HOME)bin/lcc

HUGEDRIVER_FOLDER = /home/mreichelt/workspace/gameboy_development/hUGEDriver

# You can set flags for LCC here
# For example, you can uncomment the line below to turn on debug output
# LCCFLAGS = -debug -Wf--max-allocs-per-node50000
LCCFLAGS = -debug -Iinclude
BANKDEBUG = -Wb-v
#BANKDEBUG =
#Increase ROMSIZE to get more rom banks. Only powers of 2.
ROMSIZE = 8

# You can set the name of the .gb ROM file here
PROJECTNAME    = vwf_screen_turns_off_example

MODULES		= rom0 scenes data icons modular_graphics music sfx vwf fonts
SRCDIR      = $(addprefix src/,$(MODULES))
OBJDIR      = obj
RESDIR      = $(addprefix res/,$(MODULES))
BINS	    = $(OBJDIR)/$(PROJECTNAME).gb
CFILES    	= $(foreach dir,res,$(notdir $(wildcard res/*.c))) $(foreach dir,src,$(notdir $(wildcard src/*.c))) $(foreach dir,$(SRCDIR),$(notdir $(wildcard $(dir)/*.c))) $(foreach dir,$(RESDIR),$(notdir $(wildcard $(dir)/*.c)))
CSOURCES    = $(foreach dir,res,$(wildcard res/*.c)) $(foreach dir,src,$(wildcard src/*.c)) $(foreach dir,$(SRCDIR),$(wildcard $(dir)/*.c)) $(foreach dir,$(RESDIR),$(wildcard $(dir)/*.c))
CSOURCENOEXT = $(foreach source,$(CSOURCES), $(patsubst %.c,%,$(source)))
ASMSOURCES  = $(foreach dir,$(SRCDIR),$(notdir $(wildcard $(dir)/*.s)))
OBJS       	= $(CSOURCES:%.c=$(OBJDIR)/%.o) $(ASMSOURCES:%.s=$(OBJDIR)/%.o)

all:	prepare $(BINS)

compile.bat: Makefile
	@echo "REM Automatically generated from Makefile" > compile.bat
	@make -sn | sed y/\\//\\\\/ | grep -v make >> compile.bat

# Compile .c files to object files
$(OBJDIR)/res/%.o: res/%.c
	$(LCC) $(LCCFLAGS) -c -o $@ $<

$(OBJDIR)/res/data/%.o: res/data/%.c
	$(LCC) $(LCCFLAGS) -c -o $@ $<

$(OBJDIR)/res/data/%.o: res/icons/%.c
	$(LCC) $(LCCFLAGS) -c -o $@ $<

$(OBJDIR)/res/data/%.o: res/modular_graphics/%.c
	$(LCC) $(LCCFLAGS) -c -o $@ $<

$(OBJDIR)/res/data/%.o: res/music/%.c
	$(LCC) $(LCCFLAGS) -c -o $@ $<

$(OBJDIR)/res/data/%.o: res/sfx/%.c
	$(LCC) $(LCCFLAGS) -c -o $@ $<

$(OBJDIR)/src/%.o: src/%.c
	$(LCC) $(LCCFLAGS) -c -o $@ $<

$(OBJDIR)/src/rom0/%.o: src/rom0/%.c
	$(LCC) $(LCCFLAGS) -c -o $@ $<

$(OBJDIR)/src/scenes/%.o: src/scenes/%.c
	$(LCC) $(LCCFLAGS) -c -o $@ $<

$(OBJDIR)/src/vwf/%.o: src/vwf/%.c
	$(LCC) $(LCCFLAGS) -c -o $@ $<

$(OBJDIR)/%.o: src/vwf/%.s
	$(LCC) $(LCCFLAGS) -c -o $@ $<

# Link the compiled object files into a .gb ROM file
$(BINS):	$(OBJS)
	$(LCC) $(LCCFLAGS) -autobank -Wl-yt0x1B -Wl-j -Wl-lhUGEDriver_b9.lib -Wm-yo$(ROMSIZE) -Wm-ya4 -Wb-ext=.rel $(BANKDEBUG) -o $(BINS) $(OBJS)

prepare:
	mkdir -p $(OBJDIR)
	mkdir -p $(OBJDIR)/src
	mkdir -p $(OBJDIR)/res
	mkdir -p $(foreach dir,$(SRCDIR), $(addprefix $(OBJDIR)/,$(dir)))
	mkdir -p $(foreach dir,$(RESDIR), $(addprefix $(OBJDIR)/,$(dir)))

clean:
	rm -rf  $(OBJDIR)/*

