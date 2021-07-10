for $phrase in doc("TALISMANE-3208")//p 
for $element in $phrase/item 

let $v-d-n :=
  if (($element/a[4]/text()="V") 
    and ($element/following-sibling::item[1]/a[4]/text()="DET")
    and ($element/following-sibling::item[2]/a[4]/text()="NC")
    )
  then (
      concat($element/a[2]/text()," ",
      $element/following-sibling::item[1]/a[2]/text()," ",
      $element/following-sibling::item[2]/a[2]/text()," ")
  )
  else (
  )
group by $a:= $v-d-n
order by count($v-d-n) descending 
return concat(count($v-d-n), " ", $a)