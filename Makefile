PKG = codataVis

force:
	

install:
	R CMD INSTALL ../$(PKG)_*.tar.gz

clean:
	cd vignettes && rm -fv *.R *.html tmp* Rplots*.pdf && rm -fvr rsconnect
	cd ../ && rm -fvr nclR*.tar.gz
	rm -fvr exercises original
	cd vignettes && rm -fvr *_cache *_files
	
cleaner:
	make clean
	cd notes && make cleaner