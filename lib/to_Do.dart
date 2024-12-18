import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:to_do_app/model/firestoreServies.dart';

class ToDo extends StatefulWidget {
  const ToDo({super.key});

  @override
  State<ToDo> createState() => _ToDoState();
}

class _ToDoState extends State<ToDo> {
  TextEditingController task = TextEditingController();
  TextEditingController description = TextEditingController();
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 49, 86, 117),
          title: Text(
            "ToDo",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text("add a task"),
                    content: Form(
                      key: formkey,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextFormField(
                            controller: task,
                            decoration: InputDecoration(
                                hintText: "add a task", label: Text("task")),
                          ),
                          TextFormField(
                            controller: description,
                            decoration: InputDecoration(
                                hintText: "add a descriction ",
                                label: Text("description")),
                          )
                        ],
                      ),
                    ),
                    actions: [
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("cancel")),
                      TextButton(
                          onPressed: () async {
                            Navigator.pop(context);
                            Firestoreservies()
                                .add(task.text, description.text, context);
                            task.clear();
                            description.clear();
                          },
                          child: Text("add"))
                    ],
                  );
                });
          },
          child: Icon(Icons.add),
        ),
        body: StreamBuilder(
          stream: FirebaseFirestore.instance.collection("todo").snapshots(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            final docs = snapshot.data?.docs;
            if (docs == null || docs.isEmpty) {
              return Center(
                child: Text("no task found"),
              );
            }
            return ListView.builder(
                itemCount: docs.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: Checkbox(
                          value: docs[index]["checkbox"],
                          onChanged: (newVal) async {
                            await FirebaseFirestore.instance
                                .collection("todo")
                                .doc(docs[index].id)
                                .update({"checkbox": newVal});
                          }),
                      title: Text(docs[index]["task"]),
                      subtitle: Text(docs[index]["description"]),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                              onPressed: () {
                                Firestoreservies().delete(docs[index].id);
                              },
                              icon: Icon(Icons.delete)),
                          IconButton(
                              onPressed: () {
                                task.text = docs[index]["task"];
                                description.text = docs[index]["description"];
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: Text("add a task"),
                                        content: Form(
                                          key: formkey,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              TextFormField(
                                                
                                                controller: task,
                                                decoration: InputDecoration(
                                                    hintText: "add a task",
                                                    label: Text("task")),
                                              ),
                                              TextFormField(
                                                controller: description,
                                                decoration: InputDecoration(
                                                    hintText:
                                                        "add a descriction ",
                                                    label: Text("description")),
                                              )
                                            ],
                                          ),
                                        ),
                                        actions: [
                                          TextButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: Text("cancel")),
                                          TextButton(
                                              onPressed: () async {
                                                Navigator.pop(context);
                                                Firestoreservies().updaTask(
                                                    task.text,
                                                    description.text,
                                                    docs[index].id,
                                                    context);
                                                task.clear();
                                                description.clear();
                                              },
                                              child: Text("update"))
                                        ],
                                      );
                                    });
                              },
                              icon: Icon(Icons.edit))
                        ],
                      ),
                    ),
                  );
                });
          },
        ));
  }
}
