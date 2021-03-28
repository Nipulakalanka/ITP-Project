package model;

public class Teacher {

	private String UserId;
	private String FirstName;
	private String LastName;
	private String Gender;
	private String Address;
	private String DOB;
	private String NIC;
	private String Email;
	private String Telephone;
	private String Password;
	
	public Teacher(String userId, String firstName, String lastName,String gender, String address, String dOB, String nIC,
			String email, String telephone, String password) {
		super();
		UserId = userId;
		FirstName = firstName;
		LastName = lastName;
		Gender = gender;
		Address = address;
		DOB = dOB;
		NIC = nIC;
		Email = email;
		Telephone = telephone;
		Password = password;
	}

	public Teacher() {
		
	}

	public String getUserId() {
		return UserId;
	}

	public String getFirstName() {
		return FirstName;
	}

	public String getLastName() {
		return LastName;
	}

	public String getGender() {
		return Gender;
	}

	public String getAddress() {
		return Address;
	}

	public String getDOB() {
		return DOB;
	}

	public String getNIC() {
		return NIC;
	}

	public String getEmail() {
		return Email;
	}

	public String getTelephone() {
		return Telephone;
	}

	public String getPassword() {
		return Password;
	}

	public void setUserId(String userId) {
		UserId = userId;
	}

	public void setFirstName(String firstName) {
		FirstName = firstName;
	}

	public void setLastName(String lastName) {
		LastName = lastName;
	}

	public void setGender(String gender) {
		Gender = gender;
	}

	public void setAddress(String address) {
		Address = address;
	}

	public void setDOB(String dOB) {
		DOB = dOB;
	}

	public void setNIC(String nIC) {
		NIC = nIC;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public void setTelephone(String telephone) {
		Telephone = telephone;
	}

	public void setPassword(String password) {
		Password = password;
	}
	
	
}
