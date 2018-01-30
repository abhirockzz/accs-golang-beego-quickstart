go get github.com/astaxie/beego
echo "got beego"
go get github.com/beego/bee
echo "bee tool installed"
#cd $GOPATH/src
pwd
bee new accsbeego
echo "new project bootstrapped!"
cd src/accsbeego
sed -i -e 's/8080/$PORT/g' conf/app.conf
echo "updated conf to pick up PORT from container"
bee run