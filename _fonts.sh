#!/bin/bash

declare -a FontsBaseNames=("CaskaydiaCove" "DaddyTimeMono" "FantasqueSansMono" "FiraCode" "Hasklug" "Inconsolata" "Iosevka" "JetBrainsMono" "Monofur" "Mononoki" "ShureTechMono" "SpaceMono" "Terminess" "VictorMono")
NERD_FONTS_RELEASE='v2.1.0'

mkdir ./.fonts
cd .fonts || exit

for font in "${FontsBaseNames[@]}"; do
	echo "$font"
	wget -nv --show-progress https://github.com/ryanoasis/nerd-fonts/releases/download/$NERD_FONTS_RELEASE/"$font".zip
	unzip -q "$font".zip
	rm "$font".zip
done

cd ../
mv ./.fonts ~/
