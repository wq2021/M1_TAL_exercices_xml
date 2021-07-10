for $phrase in doc("TALISMANE-3208")//p
for $element in $phrase/item

let $a-n :=
  if (($element/a[4]/text()="NC") 
    and ($element/following-sibling::item[1]/a[4]/text()="ADJ"))
  then (
      concat($element/a[2]/text()," ",
      $element/following-sibling::item[1]/a[2]/text()," ")
  )
  else (
  )
group by $a:= $a-n
order by count($a-n) descending
return concat(count($a-n), " ", $a)