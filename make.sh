#!/bin/bash
set +x

# fix lilypond

LY_PATH="/c/data/01.Software/lilypond-2.18.2/usr/bin/lilypond.exe"
#LY_PATH="/home/ubuntu/bin/lilypond"
LY_OPTION="-dno-point-and-click --pdf"

LY_FOLDER="lilypond"
PDF_FOLDER="pdf"

WORKING=$(pwd)
LIST=${WORKING}/list.txt
HEADER=${WORKING}/header.txt
FOOTER=${WORKING}/footer.txt
HTML=${WORKING}/index.html

rm -rf ${LIST}

ls -d */ | while read folder
do
  # create coresponding folder in PDF folder
  rm -rf ${WORKING}/${folder}/${PDF_FOLDER}
  mkdir ${WORKING}/${folder}/${PDF_FOLDER}
  
  # add content of index.html in each folder
  cat ${folder}index.html >> ${LIST}
  
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
    # generate PDF file
    #${LY_PATH} ${LY_OPTION} -o "${WORKING}${folder}${PDF_FOLDER}/${songfile}" ${lyfile}
    # use base name
    ${LY_PATH} ${LY_OPTION} -o "${WORKING}${folder}${PDF_FOLDER}/${filename}" ${lyfile}
    
    echo "${song} <a href=\"${folder}${PDF_FOLDER}/${filename}.pdf\">PDF</a><br>" >> ${LIST}
    
    echo "======"
    
  done
done

# add header and footer to form full html page
cat ${HEADER} ${LIST} ${FOOTER} > ${HTML}
