for $phrase in doc("TALISMANE-3208")//p 
for $element in $phrase/item 

let $n-p-n-p :=
  if (($element/a[4]/text()="NC") 
    and ($element/following-sibling::item[1]/a[4]/text()="P")
    and ($element/following-sibling::item[2]/a[4]/text()="NC")
    and ($element/following-sibling::item[3]/a[4]/text()="P")
    )
  then (
      concat($element/a[2]/text()," ",
      $element/following-sibling::item[1]/a[2]/text()," ",
      $element/following-sibling::item[2]/a[2]/text()," ",
      $element/following-sibling::item[3]/a[2]/text()," ")
  )
  else (
  )
group by $a:= $n-p-n-p
order by count($n-p-n-p) descending 
return concat(count($n-p-n-p), " ", $a)