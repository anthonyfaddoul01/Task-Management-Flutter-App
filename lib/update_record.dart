import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class UpdateRecord extends StatefulWidget {

  const UpdateRecord({Key? key, required this.studentKey}) : super(key: key);

  final String studentKey;

  @override
  State<UpdateRecord> createState() => _UpdateRecordState();
}

class _UpdateRecordState extends State<UpdateRecord> {

  final  TaskController = TextEditingController();
  final  DateController= TextEditingController();
  final  DescriptionController =TextEditingController();

  late DatabaseReference dbRef;

  @override
  void initState() {
    super.initState();
    dbRef = FirebaseDatabase.instance.ref().child('Tasks');
    getStudentData();
  }

  void getStudentData() async {
    DataSnapshot snapshot = await dbRef.child(widget.studentKey).get();

    Map task = snapshot.value as Map;

    TaskController.text = task['name'];
    DateController.text = task['age'];
    DescriptionController.text = task['salary'];

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Task'),
      ),
      body:  Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Changing task...',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: TaskController,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Task',
                  hintText: 'Enter Your Task',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: DateController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Due Date',
                  hintText: 'Enter The Due Date',
                  suffixIcon: IconButton(
                    icon: Icon(Icons.calendar_today),
                    onPressed: () async {
                      DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime.now(),
                        lastDate: DateTime(2101),
                      );

                      if (pickedDate != null && pickedDate != DateController.text) {
                        DateController.text = pickedDate.toLocal().toString().split(' ')[0];
                      }
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: DescriptionController,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Description',
                  hintText: 'Enter The Description',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              MaterialButton(
                onPressed: () {

                  Map<String, String> tasks = {
                    'task': TaskController.text,
                    'date': DateController.text,
                    'description': DescriptionController.text
                  };

                  dbRef.child(widget.studentKey).update(tasks)
                      .then((value) => {
                    Navigator.pop(context)
                  });

                },
                child: const Text('Change Task'),
                color: Colors.blue,
                textColor: Colors.white,
                minWidth: 300,
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}