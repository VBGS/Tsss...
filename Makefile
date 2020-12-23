creeper.bin: creeper.hxr
	@if [ -x /bin/hxr ]; then hxr $< $@; else if [ ! -d hxr ]; then git clone https://github.com/VBGS/hxr.git; fi; cd hxr; git pull; make -s; cd ..; ./hxr/hxr $< $@; fi

clean:
	@rm -rf creeper.bin hxr
