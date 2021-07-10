for $i in doc("3208-2017-v2")//description/article
return string-join($i/element/data[3]," ")