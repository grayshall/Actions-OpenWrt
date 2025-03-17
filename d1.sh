# add a feed source
sed -i 'src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
sed -i 'src-git small https://github.com/kenzok8/small' feeds.conf.default
sed -i 'src-git darkmatter https://github.com/apollo-ng/luci-theme-dark' feeds.conf.default
sed -i 'src-git istore https://github.com/linkease/istore;main' feeds.conf.default
#sed -i '$a src-git packages https://github.com/DHDAXCW/packages' feeds.conf.default
