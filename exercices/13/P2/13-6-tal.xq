for $i in doc("TALISMANE-3208")//item

let $obj := $i/a[2]/text()
where $i/a[8]/text()='obj'

return ("OBJ: "|| $obj)