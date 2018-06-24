type course = {
  dept : string;
  num : int;
}

val has_taken_ece : course list -> bool

val in_cs_minor : course -> bool

val cs_minor_progress_helper : course list -> float -> float

val cs_minor_progress : course list -> float
