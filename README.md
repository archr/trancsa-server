### Tracsa-server

Aplicación para el reto de Tracsa en CPMX5.

Permite saber a que equipos de los clientes de tracsa se les a realizado un mantenimiento preventivo.

#### Requerimientos
 - Nodejs
 - Coffeescript
 - Mongodb

#### Instalación
```
  git clone git@github.com:berser/trancsa-server.git
  cd trancsa-server
  npm install
```

### Uso
```
  coffee index.coffee
```

- Para ver el adminitrador web ir a: [localhost:3000](http://localhost:3000).
- Para consumir el servicio web:  [localhost:3000/api/mantenimientos](http://localhost:3000/api/mantenimientos)