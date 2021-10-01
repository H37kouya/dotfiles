# norminette
# https://github.com/hivehelsinki/norminette-client
if [ ! -d ~/.norminette ]; then
    git clone https://github.com/hivehelsinki/norminette-client.git ~/.norminette/
    cd ~/.norminette/
    bundle
    cd ~
fi
