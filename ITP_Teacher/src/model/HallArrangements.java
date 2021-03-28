package model;

public class HallArrangements {

	int ReserveId;
	String HallNumber;
	String TeacherName;
	String TeacherId;
	String Type;
	String Subject;
	String Grade;
	String Day;
	String StartTime;
	String EndTime;

	// OLD ALL CONSTRUCTOR
	public HallArrangements(int reserveId, String hallNumber, String teacherName, String type, String subject,
			String grade, String day, String startTime, String endTime) {
		super();
		ReserveId = reserveId;
		HallNumber = hallNumber;
		TeacherName = teacherName;
		Type = type;
		Subject = subject;
		Grade = grade;
		Day = day;
		StartTime = startTime;
		EndTime = endTime;
	}

	// NEW CONSTRUCTOR
	public HallArrangements(String hallNumber, String teacherName, String teacherId, String type, String subject,
			String grade, String day, String startTime, String endTime) {
		super();

		HallNumber = hallNumber;
		TeacherName = teacherName;
		TeacherId = teacherId;
		Type = type;
		Subject = subject;
		Grade = grade;
		Day = day;
		StartTime = startTime;
		EndTime = endTime;
	}
	//OLD CONSTRUCTOR
	public HallArrangements(String hallNumber, String teacherName, String type, String subject, String grade,
			String day, String startTime, String endTime) {
		super();
		HallNumber = hallNumber;
		TeacherName = teacherName;
		Type = type;
		Subject = subject;
		Grade = grade;
		Day = day;
		StartTime = startTime;
		EndTime = endTime;
	}
	
	
	//NEW ALL CONSTRUCTOR
	public HallArrangements(int reserveId, String hallNumber, String teacherName, String teacherId, String type,
			String subject, String grade, String day, String startTime, String endTime) {
		super();
		ReserveId = reserveId;
		HallNumber = hallNumber;
		TeacherName = teacherName;
		TeacherId = teacherId;
		Type = type;
		Subject = subject;
		Grade = grade;
		Day = day;
		StartTime = startTime;
		EndTime = endTime;
	}

	public int getReserveId() {
		return ReserveId;
	}

	public void setReserveId(int reserveId) {
		ReserveId = reserveId;
	}

	public String getHallNumber() {
		return HallNumber;
	}

	public void setHallNumber(String hallNumber) {
		HallNumber = hallNumber;
	}

	public String getTeacherName() {
		return TeacherName;
	}

	public void setTeacherName(String teacherName) {
		TeacherName = teacherName;
	}

	public String getType() {
		return Type;
	}

	public void setType(String type) {
		Type = type;
	}

	public String getSubject() {
		return Subject;
	}

	public void setSubject(String subject) {
		Subject = subject;
	}

	public String getGrade() {
		return Grade;
	}

	public void setGrade(String grade) {
		Grade = grade;
	}

	public String getDay() {
		return Day;
	}

	public void setDay(String day) {
		Day = day;
	}

	public String getStartTime() {
		return StartTime;
	}

	public void setStartTime(String startTime) {
		StartTime = startTime;
	}

	public String getEndTime() {
		return EndTime;
	}

	public void setEndTime(String endTime) {
		EndTime = endTime;
	}

	public String getTeacherId() {
		return TeacherId;
	}

	public void setTeacherId(String teacherId) {
		TeacherId = teacherId;
	}

	@Override
	public String toString() {
		return "HallArrangements [ReserveId=" + ReserveId + ", HallNumber=" + HallNumber + ", TeacherName="
				+ TeacherName + ", TeacherId=" + TeacherId + ", Type=" + Type + ", Subject=" + Subject + ", Grade="
				+ Grade + ", Day=" + Day + ", StartTime=" + StartTime + ", EndTime=" + EndTime + "]";
	}

}

