package helper;

public class Person extends User {
	
	public Person() {}
	
	public Person(String name, String surname, String city, String phone) {
		super(name, surname, city, phone);
	}
	
	public Person(String name, String surname) {
		super(name, surname);
	}
	

	@Override
	public String toString() {
		return "Person [name=" + super.getName() + ", surname=" + super.getSurname() + "]";
	}

	
	
	
}
