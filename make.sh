#!/bin/bash
set +x

# fix lilypond

LY_CMD="/c/data/01.Software/lilypond-2.18.2/usr/bin/lilypond.exe"
#LY_CMD="lilypond"
#LY_CMD="/home/ubuntu/bin/lilypond"
LY_OPTION="-dno-point-and-click --pdf"

LY_FOLDER="lilypond"
PDF_FOLDER="pdf"

WORKING=$(pwd)
#LIST=${WORKING}/list.txt
HEADER_HTML=${WORKING}/header.html
FOOTER_HTML=${WORKING}/footer.html
INDEX_HTML=${WORKING}/index.html
HEADER_MD=${WORKING}/header.md
FOOTER_MD=${WORKING}/footer.md
README_MD=${WORKING}/README.md
GENERATE=${WORKING}/gen.sh

#rm -rf ${LIST}
rm -rf ${INDEX_HTML}
rm -rf ${README}
rm -rf ${GENERATE}

# init HTML, README.md
cat ${HEADER_HTML} > ${INDEX_HTML}
cat ${HEADER_MD} > ${README_MD}

ls -d */ | while read folder
do
  # create coresponding folder in PDF folder
  rm -rf ${WORKING}/${folder}/${PDF_FOLDER}
  mkdir ${WORKING}/${folder}/${PDF_FOLDER}
  
  # add content of index.html in each folder
  cat ${folder}index.html >> ${INDEX_HTML}
  
  # scan each folder inside lilypond folder
  #cd ${folder}/${LY_FOLDER}

  # scan each .ly file inside one lilypond folder
  for lyfile in ${folder}/${LY_FOLDER}/*.ly ;
  do
    # extract title
    song=`cat ${lyfile} | grep "^[[:blank:]]*title"`
    # trim leading and trailing spaces
    song=`echo $song | sed -e 's/^[[:space:]]*//'`
    # remove word 'title'
    song=${song#title}
    # remove character '='
    song=`echo ${song} | sed "s/=//"`
    # remove character "
    song=`echo ${song} | sed "s/\"//g"`
    # trim leading and trailing spaces
    song=`echo $song | sed -e 's/^[[:space:]]*//'`
    # replace ' and " by -
    song=${song//\'/-}
    song=${song//\"/-}
    echo "Song name: ${song}"
    
    # get base file name
    filename=$(basename ${lyfile} ".ly")
    
    # extract composer
    writer=`cat ${lyfile} | grep "composer"`
    # trim leading and trailing spaces
    writer=`echo $writer | sed -e 's/^[[:space:]]*//'`
    # remove word 'composer'
    writer=${writer#composer}
    # remove character '='
    writer=`echo ${writer} | sed "s/=//"`
    # remove character "
    writer=`echo ${writer} | sed "s/\"//g"`
    # trim leading and trailing spaces
    writer=`echo $writer | sed -e 's/^[[:space:]]*//'`
    echo "Writer name(s): ${writer}"
    
    songfile=${song}
    if [ ! -z "$writer" ]; then
      songfile="${songfile} (${writer})"
    fi
    
    # remove accents/diacritics
    #songfile=`echo ${songfile} | iconv -f UTF-8 -t ASCII//TRANSLIT`
    
    echo "Song file: ${songfile}"
    # add one command to process this ly later
    echo "${LY_CMD} ${LY_OPTION} -o \"${WORKING}/${folder}${PDF_FOLDER}/${filename}\" ${lyfile}" >> ${GENERATE}
    
    echo "${songfile} <a href=\"${folder}${PDF_FOLDER}/${filename}.pdf\">PDF</a> - <a href=\"${folder}${LY_FOLDER}/${filename}.ly\"> Lilypond .ly</a><br>" >> ${INDEX_HTML}
    echo "* ${songfile} [PDF](${folder}${PDF_FOLDER}/${filename}.pdf) - [LILYPOND](${folder}${LY_FOLDER}/${lyfile})" >> ${README_MD}
    
    echo "======"
    
  done
done

# add footer to form full page
cat ${FOOTER_HTML} >> ${INDEX_HTML}
cat ${FOOTER_MD} >> ${README_MD}

# actually generate PDF from lilypond
chmod a+x ${GENERATE}
#${GENERATE}
