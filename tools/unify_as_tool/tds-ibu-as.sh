#!/bin/bash


umask 022
export CUR_DIR=`pwd`


#stage 1,genernate bin file from .out file by using binutils,strip useless sections.

mkdir -p $CUR_DIR/stage1
pushd $CUR_DIR/stage1
cp -fr  $CUR_DIR/materials/see_sabbat_s35x.out ./
cp -fr  $CUR_DIR/materials/Sabbat_s35x.out  ./
cp -fr  $CUR_DIR/materials/mips-4.4-305-mips-sde-elf-i686-pc-linux-gnu.tar.bz2 ./

if [ ! -d "${CUR_DIR}/stage1/mips-4.4" ]; then
    tar xvf mips-4.4-305-mips-sde-elf-i686-pc-linux-gnu.tar.bz2
fi

export PATH=$PATH:$CUR_DIR/stage1/mips-4.4/bin
mips-sde-elf-objcopy -R .flash -O binary Sabbat_s35x.out Sabbat_s35x
mips-sde-elf-objcopy -j .flash -O binary Sabbat_s35x.out flash.sec
mips-sde-elf-objcopy -R .flash -O binary see_sabbat_s35x.out see_sabbat_s35x
mips-sde-elf-objcopy -j .flash -O binary see_sabbat_s35x.out see_flash.sec
popd

#stage 2,encrypt the .rodata section for cutoff strints meet the as demand. 

mkdir -p $CUR_DIR/stage2
pushd  $CUR_DIR/stage2
export PATH=$PATH:$CUR_DIR/materials

cp -fr $CUR_DIR/materials/Sabbat_s35x.map ./
cp -fr $CUR_DIR/materials/see_sabbat_s35x.map ./
cp -fr $CUR_DIR/stage1/see_sabbat_s35x ./
cp -fr $CUR_DIR/stage1/Sabbat_s35x ./
mv Sabbat_s35x Sabbat_s35x.bak
mv see_sabbat_s35x see_sabbat_s35x.bak
rm -fr $CUR_DIR/materials/code_built
ln -s $CUR_DIR/materials/unifytool $CUR_DIR/materials/code_built
code_built --out Sabbat_s35x --map Sabbat_s35x.map --code Sabbat_s35x.bak
code_built --map see_sabbat_s35x.map --code see_sabbat_s35x.bak --out see_sabbat_s35x
popd

#stage 3,append version infomation to main and see bin.

mkdir -p $CUR_DIR/stage3
pushd $CUR_DIR/stage3
rm -fr ./blocks_script_7z_sabbat_s3602_dual_ca.txt
cp -fr $CUR_DIR/stage2/Sabbat_s35x ./app.bin
cp -fr $CUR_DIR/stage2/see_sabbat_s35x ./app_see.bin
cp -fr $CUR_DIR/materials/blocks_script_7z_sabbat_M3515_dual_cas9.txt ./blocks_script_7z_sabbat_s3602_dual_ca.txt
sed -i "s/0x06F90101/0x0AF50100/g" ./blocks_script_7z_sabbat_s3602_dual_ca.txt

cp -fr ./app.bin ./app_se.bin
cp -fr ./app_see.bin ./app_see_se.bin
rm -fr $CUR_DIR/materials/version_appender
ln -s $CUR_DIR/materials/unifytool $CUR_DIR/materials/version_appender
version_appender --script blocks_script_7z_sabbat_s3602_dual_ca.txt --type allcode
popd

#stage 4,sigh the bin file
mkdir -p $CUR_DIR/stage4
pushd $CUR_DIR/stage4
cp -fr $CUR_DIR/stage3/app_se.bin ./
cp -fr $CUR_DIR/stage3/app_see_se.bin ./
cp -fr $CUR_DIR/materials/sys_sw_pair.key ./
cp -fr $CUR_DIR/materials/stb_info2.bin ./

cp -fr ./app_se.bin ./app_v.bin
cp -fr ./app_see_se.bin ./app_see_v.bin
rm -fr $CUR_DIR/materials/redemo
ln -s $CUR_DIR/materials/unifytool $CUR_DIR/materials/redemo
redemo --key sys_sw_pair.key --input app_v.bin --out app_s.bin
redemo --key sys_sw_pair.key --input app_see_v.bin --out app_see_s.bin
redemo --key sys_sw_pair.key --input stb_info2.bin --out stb_info_s.bin
popd



