for $p in doc("TALISMANE-3208")//p
return string-join($p/item/a[2]," ")