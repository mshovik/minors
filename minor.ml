type course = {
  dept : string;
  num : int;
}

let in_cs_minor course =
  if course.dept = "CS"
  then true
  else false
