import 'dart:core';
void main()
{
  //fixed list or static list initialization
  
  var my_list=List<int>.filled(5,0);
  print(my_list);
  print(my_list.length);
  my_list[0]=40;
  print(my_list[0]);

  //growable list or dynamic list

  var growable_list=[];
  growable_list.add(10);
  growable_list.add(20);
  growable_list[1]=30;
  growable_list.add(20);
  print(growable_list);
  print(growable_list.length);

  //generic list

  List<String> mylst=["Kawsar","Jamil"];
  mylst.add("Name");
  print(mylst);
  
  //foreachloop

  mylst.forEach((element) =>print(element));
  List<int> genlst=[1,2,3,4,5];
  
  //another type of for loop

  for(var i in genlst)
  {
    print(i);
  }


}