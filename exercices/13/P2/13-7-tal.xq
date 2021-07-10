for $i in doc("TALISMANE-3208")//p

where $i/item/a[8]/text()='sub'

let $sub:=$i/item[a="sub"]/a[2]/text()
let $gov_num:=$i/item[a='sub']/a[7]/text()
let $gov:=$i/item[a[1]=$gov_num]/a[2]/text()

return string-join (($gov,$sub)," ---> ")
