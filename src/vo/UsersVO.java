package vo;

public class UsersVO {
	private String id; 
	private String pw; 
	private String name;
	private String phone;
	private String role;
	
	public UsersVO() {}
	
	public UsersVO(String id, String pw, String name, String phone, String role) {
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.phone = phone;
		this.role = role;
	}

	public String getId() {
		return id;
	}
	
    public void setId(String id) {
		this.id = id;
    }
	
    public String getPw() {
		return pw;
	}
	
    public void setPw(String pw) {
		this.pw = pw;
	}
	
    public String getName() {
		return name;
	}
	
    public void setName(String name) {
		this.name = name;
	}
	
    public String getPhone() {
		return phone;
	}
	
    public void setPhone(String phone) {
		this.phone = phone;
	}
	
    public String getRole() {
		return role;
	}
	
    public void setRole(String role) {
		this.role = role;
	}


	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result + ((pw == null) ? 0 : pw.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		UsersVO other = (UsersVO) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		if (pw == null) {
			if (other.pw != null)
				return false;
		} else if (!pw.equals(other.pw))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "UsersVO [id=" + id + ", pw=" + pw + ", name=" + name + ", phone=" + phone + ", role=" + role + "]";
	}
    
	

}
