for $i in doc("baseTrameurFromRhapsodie")//item

let $sub := $i/f[1]/text()
where $i/a[8][contains(text(),'SUB')]

return ("SUB: "|| $sub)