mkdir labeled
FOR %%i IN (*.jpg) DO convert "%%i" "cc-by_88x31.png" -gravity SouthEast -compose Screen  -composite -fill white  -undercolor #00000080   -pointsize 30 -annotate +90+1  "photo by trolleway   dr_kitaetsc.livejournal.com"     "labeled/%%~ni.jpg"
