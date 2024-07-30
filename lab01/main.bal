import ballerina/io;
import ballerina/lang.'int;

enum Gender {
    male = "MALE",
    female,
    others
}

type String string;

type Student record {
    readonly String studentNumber;
    String name;
    int age?;
    string course;
    Gender gender;
};

public function main() {
    int age = 12;
    string name = "Isaac";
    float mark = 3.5;
    decimal height = 2.8;
    boolean passed = true;
    var firstname = "";
    // const age1 = 45;
    // any 
    if (age >= 20) {
        io:println("The age is greater than 25");
    }

    if age >= 20 {
        io:println("The age is greater than 25");
    } else if age >= 30 || age <= 40 {
        io:println("The age is greater than 30");
    } else {
        io:println("The age is ", age);
    }

    // any students;

    // match students {

    //     "Isaac"|"Makosa"|"hdgfjdgfjk" => {
    //         io:print("Name is Isaac");
    //     }
    //     1|2|5|7 => {

    //     }
    //     _ => {
    //         io:println("Defaults ");
    //     }
    // }

    // Loops
    // foreach loop and While loop

    while age < 18 {
        io:println("Age ", age);
        // break;
        age += 1;
        // continue;
    }

    foreach int i in 10 ... 100 {

    }
    foreach int i in int:range(100, 10, -5) {

    }

    string[] names = ["1", "4", "6", "7", "8", "9"];
    names[2] = "";
    names.push("isaac");
    string lastname = names.pop();
    _ = names.pop();

    map<int> marks = {
            "22245566": 90,
            "22245567": 40
        };

    Student st = {
        course: "",
        gender: "MALE",
studentNumber: "21990",
name: ""
};

    Student[] students = [];
    students.push(
    {
        name: "Isaac",
        age: 0,
        course: "DSA",
        gender: "others",
        studentNumber: "23322333"
    },
        {
        name: "Makosa",
        age: 0,
        course: "DSA",
        gender: "others",
        studentNumber: "23322333"
    }
);

    table<Student> key(studentNumber) students1 = table [];
    // students1.add()

}

function calculateAvg(int mark1, int mark2) returns float {
    return (<float>mark1 + <float>mark2) / 2;
}
