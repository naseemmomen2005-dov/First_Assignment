import 'dart:io';
List<Map<String,dynamic>> students =[];
    int counter = -0;
void main(){
    String appName=" Student managment";
    print(appName);
    bool work =true;
    while(work){
  showMessage();
    String number = stdin.readLineSync() ?? "";
    switch(number){
     case "1":
        addStudent();
        break;
     case"2" :
        removestudent();
        break;
    case"3" :
        showStudents();
        break;
    case"4" :
        findstudent();
        break;
     case "5":
        work =false;
        break;
    default:
    print("invalid number");
    break;

    }
    }
  
}
void showMessage(){
    print("Choose 1 to add student");
    print("Choose 2 to Remove student");
    print("Choose 3 to Show student");
    print("Choose 4 to Find student");
    print("Choose 5 to Stop The system ");
    stdout.write("Choose Number: ");
}
void addStudent(){
 stdout.write("Enter Name: ");
 String Name = stdin.readLineSync() ?? "";

 stdout.write("Enter level: ");
 int level =int.tryParse(stdin.readLineSync() ?? "") ?? 1;


  stdout.write("Enter department: ");
 String department = stdin.readLineSync() ?? "";


 stdout.write("Enter GPA: ");
 double gpa =double.tryParse(stdin.readLineSync() ?? "") ?? 0.0;

students.add({
    'id': counter++,
    'name':Name,
    'department':department,
    'level':level,
    'gpa':gpa
});
print("Add sucessful");

}
void removestudent(){
    stdout.write("Enter ID: ");
 int? id =int.tryParse(stdin.readLineSync() ?? "");
 if(id==null){
    print("Invalid");
    return;
 }

 students.removeWhere((student)=>student['id']==id);
 print("Remove Done");
}

void showStudents(){
    if(students.isEmpty){
        print("The List is empty");
        return;
    }
    for(var student in students){
     print("ID: ${student['id']}  | Name: ${student['name']}   |Department: ${student['department']}  | Level : ${student['level']}  |  GPA: ${student['gpa']}");
    }

}

void findstudent(){
 stdout.write("Enter ID: ");
 int? id =int.tryParse(stdin.readLineSync() ?? "");
 if(id==null){
    print("Invalid");
    return;
 }
 for(var student in students){
    if(student['id']==id){
      print("ID: ${student['id']}  | Name: ${student['name']}   |Department: ${student['department']}  | Level : ${student['level']}  |  GPA: ${student['gpa']}");
        return;
    }
 }
 print("Student is not found");
 
}