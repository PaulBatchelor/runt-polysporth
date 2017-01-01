LDFLAGS = -ldl -L/usr/local/lib -lsporth -lsoundpipe -lsndfile -lm -lrunt

runt.so: runt.c 
	$(CC) $(CFLAGS) runt.c -shared -fPIC -o $@ $(OBJ) $(LDFLAGS) 

install: runt.so
	mkdir -p /usr/local/share/sporth/polysporth
	install runt.so /usr/local/share/sporth/polysporth

clean:
	rm -rf runt.so
