class NetworkEndpoint {
  // static const String _BASE_URL =
  //     "http://masterdata.service.asikk.lan.go.id";
  // static const String _BASE_URL_EMPLOYEE =
  //     "http://employee.service.asikk.lan.go.id";
  // static const String _BASE_URL_PRESENCE =
  //     "http://presence.service.asikk.lan.go.id";
  // static const String _BASE_URL_AUTH =
  //     "http://security.service.asikk.lan.go.id";
  // static const String _BASE_URL_NOTIFICATION = "http://notification.service.asikk.lan.go.id";
  // static const String _BASE_URL_SKP = "http://skp.service.asikk.lan.go.id";
  // static const String _BASE_API = _BASE_URL;
  // static const String _BASE_API_EMPLOYEE = _BASE_URL_EMPLOYEE ;
  // static const String _BASE_API_PRESENCE = _BASE_URL_PRESENCE;
  // static const String _BASE_API_NOTIFICATION = _BASE_URL_NOTIFICATION;
  // static const String _BASE_API_AUTH = _BASE_URL_AUTH;
  // static const String _BASE_API_SKP = _BASE_URL_SKP;

  static const String _BASE_URL =
      "http://dev.masterdata.service.siktkp.bigio.id";
  static const String _BASE_URL_EMPLOYEE =
      "http://dev.employee.service.siktkp.bigio.id";
  static const String _BASE_URL_PRESENCE =
      "http://dev.presence.service.siktkp.bigio.id";
  static const String _BASE_URL_AUTH =
      "http://dev.security.service.siktkp.bigio.id";
  static const String _BASE_URL_NOTIFICATION = "http://dev.notification.service.siktkp.bigio.id";
  static const String _BASE_URL_SKP = "http://dev.skp.service.siktkp.bigio.id";
  static const String _BASE_API = _BASE_URL + "/v1";
  static const String _BASE_API_EMPLOYEE = _BASE_URL_EMPLOYEE + "/v1";
  static const String _BASE_API_PRESENCE = _BASE_URL_PRESENCE + "/v1";
  static const String _BASE_API_NOTIFICATION = _BASE_URL_NOTIFICATION + "/v1";
  static const String _BASE_API_AUTH = _BASE_URL_AUTH + "/v1";
  static const String _BASE_API_SKP = _BASE_URL_SKP + "/v1";

  //file
  static const String USER_MANUAL = _BASE_API + "/file/download/user_manual";

  // Route Endpoint api
  static const String LOGIN = _BASE_API_AUTH + "/auth/login";
  static const String CHANGE_PASSWORD = _BASE_API_AUTH + "/auth/change_password";
  static const String ADD_DEVICE = _BASE_API_NOTIFICATION + "/employee_device";

  //Employee
  static const String EMPLOYEE = _BASE_API_EMPLOYEE + "/manual";

  //manual presence
  static const String MANUAL_PRESENCE_ENDPOINT =
      _BASE_API_PRESENCE + "/presence_manual";
  static const String MANUAL_PRESENCE_FILE =
      _BASE_API_PRESENCE + "/file/presence_manual/";

  static const String MANUAL_PRESENT_FILE =
      _BASE_API_PRESENCE + "/file/present_manual/";

  //data murni
  static const String PRESENCE_IMPORT = _BASE_API_PRESENCE + "/presence_import";
  static const String PRESENCE_IMPORT_REFRESH = _BASE_API_PRESENCE + "/presence_import/refresh";

  //WorkTime
  static const String WORK_TIME = _BASE_API + "/working_time";

  static const String HOLIDAY_ENDPOINT = _BASE_API + "/holiday";

  //-------------------Unit Kerja-------------------------

  //satker
  static const String WORK_UNIT_SATKER = _BASE_API + "/work_unit";

  //unit
  static const String WORK_UNIT_UNIT = _BASE_API + "/unit";

  //deputy
  static const String WORK_UNIT_DEPUTY = _BASE_API + "/deputy";

  //biro
  static const String WORK_UNIT_BUREAU = _BASE_API + "/bureau";

  //instansi
  static const String WORK_UNIT_INSTANCE = _BASE_API + "/instance";

  //bracket
  static const String WORK_UNIT_BRACKET = _BASE_API + "/bracket";
  static const String WORK_UNIT_BRACKET_TYPE = _BASE_API + "/bracket_type";
  static const String WORK_UNIT_BRACKET_MEAL_ALLOWANCE = _BASE_API + "/bracket/edit_meal_allowance";

  //eselon
  static const String WORK_UNIT_ESELON = _BASE_API + "/eselon";

  //bagian
  static const String WORK_UNIT_SECTION = _BASE_API + "/section";

  //sub bagian
  static const String WORK_UNIT_SUB_SECTION = _BASE_API + "/sub_section";

  //grade
  static const String WORK_UNIT_GRADE = _BASE_API + "/grade";

  //employee status
  static const String WORK_UNIT_EMPLOYEE_STATUS =
      _BASE_API + "/status_employee";

  //jabatan
  static const String WORK_UNIT_POSITION = _BASE_API + "/position";

  //mulct
  static const String WORK_UNIT_MULCT = _BASE_API + "/mulct";

  //PTKP
  static const String WORK_UNIT_PTKP = _BASE_API + "/ptkp";

  //absent_status
  static const String ABSENT_STATUS_ENDPOINT = _BASE_API + "/status_absent";
  static const String ABSENT_STATUS_TYPE = _BASE_API + "/status_absent_type";

  //SKP
  static const String SKP_INDEX = _BASE_API_SKP + "/skp";

  //work assessment
  static const String SKP_WORK_ASSESSMENT =
      _BASE_API_SKP + "/skp_work_assessment";

  //work behavior
  static const String SKP_WORK_BEHAVIOR = _BASE_API_SKP + "/skp_work_behaviour";

  //work achievement
  static const String SKP_WORK_ACHIEVEMENT =
      _BASE_API_SKP + "/skp_work_peformance";

  //work goal
  static const String SKP_WORK_GOAL = _BASE_API_SKP + "/skp_work_goal";

  //task & creativity
  static const String SKP_TASK_CREATIVITY =
      _BASE_API_SKP + "/skp_extra_task_and_creativity";
  static const String SKP_TASK_CREATIVITY_CALCULATION =
      _BASE_API_SKP + "/skp_extra_task_and_creativity/find_calculate";

  //work goal stage
  static const String SKP_WORK_GOAL_STAGE =
      _BASE_API_SKP + "/skp_work_goal_activity_stage";

  static const String SKP_WORK_GOAL_STAGE_REALIZATION =
      _BASE_API_SKP + "/skp_work_goal_activity_stage/edit_realization_quality";

  //work report
  static const String SKP_WORK_REPORT = _BASE_API_SKP + "/skp_work_report";

  //mentoring
  static const String SKP_MENTORING = _BASE_API_SKP + "/skp_mentoring";

  //Schedule pattern
  static const String SCHEDULE_PATTERN_ENDPOINT =
      _BASE_API + "/schedule_pattern";

  //Absence
  static const String ABSENCE = _BASE_API_PRESENCE + "/absent";

  //employee leave
  static const String EMPLOYEE_LEAVE = _BASE_API_PRESENCE + "/employee_leave";

  //absence balance
  static const String ABSENCE_BALANCE =
      _BASE_API_PRESENCE + "/employee_leave_balance";
  static const String PROCESS_ABSENCE_BALANCE =
      _BASE_API_PRESENCE + "/employee_leave_balance/process";
  static const String INIT_ABSENCE_BALANCE =
      _BASE_API_PRESENCE + "/employee_leave_balance/init";

// Pola Perubahan
  static const String CHANGE_PATTERN_ENDPOINT = _BASE_API + "/change_pattern";

  //pergantian pola
  static const String CHANGE_PATTERN_SCHEDULE_ENDPOINT =
      _BASE_API + "/change_pattern_schedule";

  //Assessment Piece
  static const String ASSESSMENT_PIECE_ENDPOINT =
      _BASE_API + "/assessment_piece";

  //attendance Piece
  static const String ATTENDANCE_PIECE_ENDPOINT =
      _BASE_API + "/attendance_piece";



  //Tunjangan Khusus
  static const String SPECIAL_ALLOWANCE = _BASE_API + "/special_allowance";

  //hukuman disiplin
  static const String DISCIPLINARY_PUNISHMENT = _BASE_API_EMPLOYEE + "/hukdis";
  static const String DISCIPLINARY_PUNISHMENT_FILE =
      _BASE_API_EMPLOYEE + "/file/employee_hukdis/";

  //Certain Allowance
  static const String CERTAIN_ALLOWANCE_ENDPOINT =
      _BASE_API + "/certain_allowance";

  //salary
  static const String EMPLOYEE_SALARY = _BASE_API_EMPLOYEE + "/salary";

  //potongan koperasi
  static const String COOPERATIVE_PIECE = _BASE_API_EMPLOYEE + "/cooperative_piece";
  //uang makan pegawai (employee meal)
  static const String EMPLOYEE_MEAL = _BASE_API_EMPLOYEE + "/meal";

  //rekap kehadiran pegawai
  static const String RECAP_PRESENCE = _BASE_API_EMPLOYEE + "/recap_presence";
  static const String RECAP_PRESENCE_DETAIL = _BASE_API_EMPLOYEE + "/recap_presence/find_detail";

  //laporan penilaian kinerja
  static const String WORK_ASSESSMENT_REPORT = _BASE_API_SKP + "/skp_work_assessment/find_all";

  //rekap tukin
  static const String RECAP_ALLOWANCE = _BASE_API_EMPLOYEE + "/peformance_allowance";

  //dashboard
  static const String DASHBOARD_ADMIN = _BASE_API_EMPLOYEE + "/dashboard/dashboard_administrator";
  static const String DASHBOARD_LOCAL_ADMIN = _BASE_API_EMPLOYEE + "/dashboard/dashboard_administrator_local";
  static const String DASHBOARD_EMPLOYEE = _BASE_API_EMPLOYEE + "/dashboard/dashboard_employee";

  //notification
  static const String LOAD_NOTIFICATION = _BASE_API_NOTIFICATION;
  static const String READ_NOTIFICATION = _BASE_API_NOTIFICATION + "/read";
}
