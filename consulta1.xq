declare namespace file = "http://expath.org/ns/file";

let $html :=

<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Deep-Space Agency</title>
    <meta name="description" content="Base de datos de Deep-Space Agency.">
</head>
<body>
    <header>
        <img src="logo.png" alt="Logo Deep-Space Agency" width="150">
        <h1>Deep-Space Agency: Base de Datos de Escenarios</h1>
        
        <nav>
            <ul>
                <li><a href="#galeria">Galería visual de planetas</a></li>
                <li><a href="#ranking">Ranking Planetas</a></li>
                <li><a href="#ficha">Generar "Ficha de Navegación"</a></li>
            </ul>
        </nav>
    </header>
    <main>      
        {
        for $p in //Exoplaneta
        let $temp := $p/TemperaturaMedia
        where ($temp >= 10.00 and $temp <= 35)
        order by $temp ascending
        return <ul><li>Codigo: {data($p/Codigo)}
                       Nombre: {data($p/NombreComun)}
                       Temperatura: {data($p/TemperaturaMedia)}
                       Distancia: {data($p/DistanciaAniosLuz)} 
                       Atmosfera: {data($p/Atmosfera)}
                        </li></ul>
        }
    </main>
    <footer>
        <p>&copy; 2026 Deep-Space Agency. Desarrollado por Siarhei Lukashou.</p>
        <p><a href="https://github.com/siarheilukashou25-maker/Desarrollo-de-MVP">repositorio en GitHub</a></p>
    </footer>
</body>
</html>

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



