rm -rf docker-tvheadend
git clone https://github.com/linuxserver/docker-tvheadend.git
mkdir docker-tvheadend/patches/argtable
mkdir docker-tvheadend/patches/cpan
mkdir docker-tvheadend/patches/libdvbcsa
mkdir docker-tvheadend/patches/tvheadend
mv docker-tvheadend/patches/config.guess docker-tvheadend/patches/argtable/
mv docker-tvheadend/patches/config.sub docker-tvheadend/patches/argtable/
mv docker-tvheadend/patches/cpanfile docker-tvheadend/patches/cpan
cp files/libdvbcsa.patch docker-tvheadend/patches/libdvbcsa/
cp files/tvheadend43.patch docker-tvheadend/patches/tvheadend/
cat files/docker > docker-tvheadend/Dockerfile
cd docker-tvheadend/
docker build -t thealhu/tvheadend-x64 --network host --no-cache .
