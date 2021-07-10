for $i in doc("baseTrameurFromRhapsodie")//item
where $i/a[7][contains(text(),'SUB')]
let $sub := $i/f[1]/text()
let $gov_num:= substring-before(substring-after($i/a[7]/text(), 'SUB('), ')')
let $gov:= doc("baseTrameurFromRhapsodie")//item[@pos=$gov_num]/f/text()
return string-join (($gov,$sub)," ---> ")