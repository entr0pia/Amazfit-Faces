$start = 98

for ($i = 0; $i -lt 9; $i++) { 
    $n = ($start + $i).ToString("D4")
    $name = "$n.png"
    echo $name
    # Magick $name -bordercolor none -border 1x1 $name
    Magick $name -gravity South -chop 0x1 $name
    Magick $name -gravity East  -chop 1x0 $name
}