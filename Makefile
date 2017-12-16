sffmpeg:
	@mkdir -p build && \
	cd build && \
	MACHTYPE=`uname -m`-linux-gnu cmake -DCMAKE_BUILD_TYPE=Release .. && \
	MACHTYPE=`uname -m`-linux-gnu make ${MAKEJ}

distclean:
	@rm -rf build

clean:

deb:
	@debuild -i -us -uc -b

debclean:
	@debuild clean
