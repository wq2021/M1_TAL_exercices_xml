for $i in doc("3208-2017-v2")//item

let $titre := $i/titre/article/element/data[3]
let $description := $i/description/article/element/data[3]
let $titre_total := string-join($titre," ")
let $description_total := string-join($description," ")

return concat("Titre: ",$titre_total,"&#xa;","Description: ",$description_total,"&#xa;")