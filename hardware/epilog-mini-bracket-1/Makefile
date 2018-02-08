OPENSCAD:=/usr/bin/openscad

%.svg: %.scad
	$(OPENSCAD) -o $@ $<

.PHONY: all
all: two_box_mount_inner.svg two_box_mount_outer.svg one_box_mount_inner.svg one_box_mount_outer.svg
