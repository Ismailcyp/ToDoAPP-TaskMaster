import 'package:flutter/material.dart';
import 'widgets/todo-card.dart';
import 'widgets/counter.dart';
import 'widgets/firstpage.dart';
void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class Task {
  String title;
  bool statius;

  Task({required this.statius, required this.title});
}

class _TodoAppState extends State<TodoApp> {
  List allTasks = [

  ];


  void deleteAll(){
    
      setState(() {
        allTasks.removeRange(0, allTasks.length);
      });
    
  }

  void delete(int index){
    setState(() {
      allTasks.remove(allTasks[index]);
    });

  }

   void changeStatus(int taskIndex){
    
      setState(() {
  allTasks[taskIndex].statius = !allTasks[taskIndex].statius;
});
    
  }

  int calculateCompletedTasks() {
    int completedTasks = 0;
    for (var item in allTasks) {
      if (item.statius) {
        completedTasks++;
      }
    }

    return completedTasks;
  }

  void addnewtask() {
    setState(() {
      allTasks.add(Task(title: mycontroller.text, statius: false));
    });
  }

  final mycontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(58, 66, 86, 0.7),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(58, 66, 86, 1),
        title:
         Text(
          "TO DO APP",
          style: TextStyle(
            fontSize: 33,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),

        actions: [IconButton(onPressed: (){deleteAll();}, icon: Icon(Icons.delete_forever,color: Colors.white54,size: 37,))]

      ),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Counter(
                allTodos: allTasks.length,
                allCompleted: calculateCompletedTasks(),
              ),

              SizedBox(
                height: 700,
                child: ListView.builder(
                  itemCount: allTasks.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Todocard(
                      vartitle: allTasks[index].title,
                      doneORnot: allTasks[index].statius,
                      changeStatus:changeStatus,
                      index:index,
                      delete:delete,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return Dialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  color: Colors.indigo,
                  height: 300,
                  width: 340,
                  padding: EdgeInsets.all(30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextField(
                        controller: mycontroller,
                        maxLength: 20,
                        decoration: InputDecoration(
                          hintText: "Add New Task",
                          hintStyle: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 20),
                      TextButton(
                        onPressed: () {
                          addnewtask();
                          Navigator.pop(context);
                        },
                        child: Text(
                          "ADD",
                          style: TextStyle(color: Colors.white, fontSize: 22),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
        backgroundColor: Color.fromRGBO(58, 66, 86, 0.7),
        child: Icon(Icons.add),
      ),
    );
  }
}
