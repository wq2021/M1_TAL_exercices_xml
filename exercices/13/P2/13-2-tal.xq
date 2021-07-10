for $i in doc("TALISMANE-3208")//titre/p
return string-join($i/item/a[2]," ")