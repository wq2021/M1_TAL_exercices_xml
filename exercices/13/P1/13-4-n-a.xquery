for $article in doc("3208-2017-v2")//article 
for $element in $article/element 

let $n-a :=
  if (($element/data[1]/text()="NOM") 
    and ($element/following-sibling::element[1]/data[1]/text()="ADJ"))
  then (
      concat($element/data[3]/text()," ",
      $element/following-sibling::element[1]/data[3]/text()," ")
  )
  else (
  )
group by $a:= $n-a
order by count($n-a) descending 
return concat(count($n-a), " ", $a)