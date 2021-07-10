for $article in doc("3208-2017-v2")//article 
for $element in $article/element 

let $n-p-n-p :=
  if (($element/data[1]/text()="NOM") 
    and ($element/following-sibling::element[1]/data[1]/text()="PRP")
    and ($element/following-sibling::element[2]/data[1]/text()="NOM")
    )
  then (
      concat($element/data[3]/text()," ",
      $element/following-sibling::element[1]/data[3]/text()," ",
      $element/following-sibling::element[2]/data[3]/text()," ")
  )
  else (
  )
group by $a:= $n-p-n-p
order by count($n-p-n-p) descending 
return concat(count($n-p-n-p), " ", $a)