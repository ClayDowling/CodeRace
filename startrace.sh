cd ~/CodeRace; ${CODERACE}/setupRace.sh $KATA

if [ `uname` == "Darwin" ]; then
	atom ${CODERACE}/${KATA} ${CODERACE}/${KATA}/src/RomanNumerals.js
fi

if [ `uname` == "Linux" ]; then
	gedit ${CODERACE}/${KATA}/src/RomanNumerals.js
fi
