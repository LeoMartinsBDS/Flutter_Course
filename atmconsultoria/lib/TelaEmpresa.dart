import 'package:flutter/material.dart';

class TelaEmpresa extends StatefulWidget {
  @override
  _TelaEmpresaState createState() => _TelaEmpresaState();
}

class _TelaEmpresaState extends State<TelaEmpresa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Empresa"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Image.asset("imagens/detalhe_empresa.png"),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Sobre a empresa",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.deepOrange
                        ),
                      )
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam eu mattis sem, nec interdum eros. Curabitur eget lorem blandit, scelerisque diam nec, molestie nisi. Quisque commodo leo ipsum, euismod vestibulum mi efficitur nec. Donec venenatis porta libero, a vehicula nibh pellentesque tristique. In sed libero blandit, tincidunt quam eu, tincidunt ex. Etiam a lectus dui. Ut eu dictum velit. Quisque in urna nec justo consectetur vehicula ut et sem. Ut tempus consectetur feugiat. Vivamus mollis imperdiet aliquam. Nulla et rhoncus mi, ac accumsan lacus. Maecenas vulputate sapien eu massa mollis, nec mattis sem convallis. Suspendisse sodales sem vitae enim tempus congue. Nam dapibus diam at ligula accumsan pharetra.Sed quis condimentum lectus. Nam sodales et libero vitae ullamcorper. Sed sed venenatis tortor. In ut magna pellentesque, placerat nisl at, commodo orci. Morbi ut nulla a augue interdum malesuada. Etiam ac magna quis ante iaculis hendrerit. Praesent nibh risus, sodales viverra dapibus vitae, ornare quis est. Praesent eget ipsum a mi auctor aliquet.Quisque et libero nisl. Vivamus convallis facilisis ultricies. Duis maximus in magna ut semper. Praesent dui odio, hendrerit sit amet velit vel, lacinia placerat odio. Integer accumsan justo nisl, a placerat orci tincidunt at. Quisque eleifend suscipit lectus a laoreet. Pellentesque eu nibh eu leo pellentesque imperdiet gravida vel metus. Nullam ut elit eu libero auctor faucibus at et dui. Proin vitae nulla tempor, facilisis tellus eget, varius purus. Praesent dapibus eros vitae libero tempor facilisis. Maecenas eu turpis eu arcu porttitor egestas sit amet eget neque. Phasellus eros mi, hendrerit dignissim diam ut, porta dapibus urna. Cras fermentum hendrerit neque, eget rhoncus mi tincidunt sed. Suspendisse tempor pharetra pellentesque.Vestibulum commodo augue eu arcu rhoncus vehicula. Proin dignissim orci et lacus accumsan, non bibendum dolor venenatis. Vivamus condimentum, mauris id commodo dictum, lorem arcu tempus nisi, at cursus tortor quam id orci. Proin iaculis neque sit amet nisi porta, non vehicula ligula finibus. Fusce arcu massa, fermentum cursus elit eu, hendrerit cursus dolor. Mauris pellentesque volutpat urna sit amet convallis. Proin volutpat suscipit augue in venenatis. Suspendisse tristique gravida urna, id sagittis elit sodales semper. Praesent suscipit ante nec finibus pretium. Sed porta turpis id venenatis viverra. Fusce consectetur nunc at purus vestibulum scelerisque. Vestibulum sagittis lacinia turpis, non iaculis eros elementum eget. Vestibulum at blandit nisl. Etiam quis ullamcorper lectus, vel sagittis orci.Nulla gravida nisl non auctor imperdiet. Donec id purus sit amet nisi blandit malesuada ut at ipsum. Maecenas sagittis sem vel lacus dignissim elementum. Morbi ornare ligula ut risus molestie blandit. Nunc varius mollis urna, ut tristique ipsum convallis a. Pellentesque a laoreet tellus. Fusce tincidunt suscipit magna, non aliquam massa lacinia ut. Phasellus feugiat ante sed posuere luctus. In quis urna eget augue fermentum blandit sed ut neque. Pellentesque suscipit sagittis imperdiet. Proin non condimentum magna, in volutpat mi. Nam quis lorem mollis, maximus ipsum eget, malesuada diam."
                )
              )
            ],
            )
        )
      ),
    );
  }
}