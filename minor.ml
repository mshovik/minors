type course = {
  dept : string;
  num : int;
}

let rec has_taken_ece courses =
  match courses with
  | [] -> false
  | c::cs -> (c.dept = "ECE" && c.num = 3140 )|| has_taken_ece cs


let in_cs_minor course =
  if course.dept = "CS" && course.num = 2800 ||
     (course.num >= 4000 && course.num != 4090 && course.num != 4998
      && course.num != 4999)
  then true
  else false

let rec cs_minor_progress_helper courses fl =
  match courses with
  | [] -> fl
  | c::cs -> begin
      if c.dept = "CS" && (
          (c.num = 2110 || c.num = 2112) || (c.num = 3110 || c.num = 3410)
          || (c.num = 3420 || (has_taken_ece courses)))
      then cs_minor_progress_helper cs (fl +. 1.0/.6.0)
      else if in_cs_minor c then cs_minor_progress_helper cs (fl +. 1.0/.6.0)
      else cs_minor_progress_helper cs fl
    end

let cs_minor_progress courses =
  cs_minor_progress_helper courses 0.0
