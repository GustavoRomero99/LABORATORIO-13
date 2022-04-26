import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() => runApp(Myapp());

class Myapp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
  class _MyAppState extends State<Myapp>{

  List<Estudiante> _estudiantes = [
    Estudiante('al18760464', 'Gustavo Romero Prado', 'Sistemas computacionales', '8SA', '6151149744', 'al18760464@ite.edu.mx'),
    Estudiante('18760467', 'Ramon Sandoval Perez', 'Sistemas computacionales', '8SA', '6467538475', 'al18760467@ite.edu.mx'),
    Estudiante('17860356', 'Fulano Ramirez Hernandez', 'Aeroespacial', '9AB', '646879603', 'al17860356@ite.edu.mx'),
    Estudiante('17860356', 'Itachi Uchiha', 'Gestión empresarial', '8GA', '646879603', 'al17860356@ite.edu.mx'),
    Estudiante('17860356', 'Will Smith Romero', 'Industrial', '9IB', '646879603', 'al17860356@ite.edu.mx'),
    Estudiante('17860356', 'Anya Taylor Joy', 'Electromecánica', '7EA', '646879603', 'al17860356@ite.edu.mx'),

  ];

  @override
  Widget build(BuildContext){
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.amber,
        ),
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(

          title: Text('Listado de alumnos'),
        ),
        body: ListView.builder(
          itemCount: _estudiantes.length,
            itemBuilder: (context, index) {
              return ListTile(
                onTap: (){
                  showDialog(context: context, builder: (context)=>AlertDialog(
                    title: Text('Atención!'),
                    content: Text('El estudiante se ha dado de baja...'),
                    actions: <Widget>[
                      CupertinoButton(child: Text("Ok"), onPressed: (){Navigator.of(context).pop();}),
                    ],
                  ),
                  );
                },
                title: Text(_estudiantes[index].nombre),
                subtitle: Text(_estudiantes[index].matricula
                    +' \n'+ _estudiantes[index].carrera +' \n'+ _estudiantes[index].semestre +'\n'+ _estudiantes[index].telefono
                    +' \n'+ _estudiantes[index].correo+' \n'),
                leading: CircleAvatar(
                  child: Image(
                    image: NetworkImage('https://i0.wp.com/www.mocamboo.com/wp-content/uploads/2021/10/avatar-1633073455n8il6-scaled.jpg?resize=300%2C300&ssl=1'),
                  ),
                ),
                trailing: Icon(Icons.arrow_circle_down),
              );
            }
            )
        )

    );
  }
}

class Estudiante{
  String matricula;
  String nombre;
  String carrera;
  String semestre;
  String telefono;
  String correo;

  Estudiante(this.matricula, this.nombre, this.carrera, this.semestre, this.telefono, this.correo) {
      this.matricula=matricula;
      this.nombre=nombre;
      this.carrera=carrera;
      this.semestre=semestre;
      this.telefono=telefono;
      this.correo=correo;
  }
}