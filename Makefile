
# Note: Removed sculld scullp and scullv from the default build until
# similar issues with aio on scullc are resolved.  Ideally these would
# use a file which shares the solution
SUBDIRS =  misc-progs misc-modules \
           skull scull scullc sbull snull\
	   short shortprint pci simple usb tty lddbus

all: subdirs

subdirs:
	for n in $(SUBDIRS); do $(MAKE) -C $$n || exit 1; done

clean:
	for n in $(SUBDIRS); do $(MAKE) -C $$n clean; done
