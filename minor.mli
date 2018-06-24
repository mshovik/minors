type course = {
  dept : string;
  num : int;
}

val in_cs_minor : course -> bool

val cs_minor_progress : course list -> float
