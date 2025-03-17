# add a feed source
echo 'src-git kenzo https://github.com/kenzok8/openwrt-packages' >>feeds.conf.default
echo 'src-git small https://github.com/kenzok8/small' >>feeds.conf.default
echo 'src-git darkmatter https://github.com/apollo-ng/luci-theme-dark' >>feeds.conf.default
echo 'src-git istore https://github.com/linkease/istore;main' >>feeds.conf.default
#sed -i '$a src-git packages https://github.com/DHDAXCW/packages' feeds.conf.default
