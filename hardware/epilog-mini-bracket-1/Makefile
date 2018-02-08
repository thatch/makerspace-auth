OPENSCAD:=/usr/bin/openscad

%.svg: %.scad
	$(OPENSCAD) -o $@ $<
	sed -i.bak 's/svg width="\([^"]*\)" height="\([^"]*\)"/svg width="\1mm" height="\2mm"/' $@

.PHONY: all
all: two_box_mount_inner.svg two_box_mount_outer.svg one_box_mount_inner.svg one_box_mount_outer.svg one_box_mount_hole_template.svg
