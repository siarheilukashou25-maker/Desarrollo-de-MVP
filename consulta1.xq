declare namespace file = "http://expath.org/ns/file";

let $html :=

for $p in //TemperaturaMedia
let $temp := $p
where ($temp >= 10.00 and $temp <= 35)
order by $temp ascending
return $p


return file:write(
  "C:\Users\DAM1\Desktop\Desarrollo de MVP\consulta1.html",
  $html,
  map {
    "method": "html",
    "version": "5.0",
    "indent": "yes",
    "omit-xml-declaration": "yes",
    "encoding": "UTF-8"
  }
)
