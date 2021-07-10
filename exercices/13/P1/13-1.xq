for $i in doc("3208-2017-v2")//titre/article
return string-join($i/element/data[3]," ")