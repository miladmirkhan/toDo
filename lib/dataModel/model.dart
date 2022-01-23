class  User{//data model
num id;
  String title;
  String descreption;
  String startDate;
  String endDate;

User(this.id,
this.title,
this.descreption,
this.startDate,
this.endDate);

static List<User> generateUsers(){
return [
  User(1,"todo","drink water","2021, 11, 9","2022, 1, 30"),
  User(2,"Need to do","Flutter assignment","2021,2,3","2022,3,4"),
  ];
}
}



