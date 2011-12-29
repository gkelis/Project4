/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

/**
 *
 * @author FoG
 */
import java.util.ArrayList;

import com.opensymphony.xwork2.ActionSupport;

public class RegisterAction extends ActionSupport {
	
	private String userName;
	
	private String password;
	
	private String gender;
	
	private String about;
	
	private String country;
	
	private ArrayList<Country> countryList;
	
	private String[] community;
	
	private ArrayList<String> communityList;
	
	private Boolean  mailingList;

	public String populate() {

		countryList = new ArrayList<Country>();
		countryList.add(new Country(1, "France"));
		countryList.add(new Country(2, "Germany"));
		countryList.add(new Country(3, "Greece"));
                countryList.add(new Country(4, "Italy"));
                countryList.add(new Country(5, "Japan"));
                countryList.add(new Country(6, "Spain"));
                countryList.add(new Country(7, "UK"));
                countryList.add(new Country(8, "USA"));
                
		
		communityList = new ArrayList<String>();
		communityList.add("Java");
		communityList.add(".Net");
		communityList.add("SOA");
		
		community = new String[]{"Java",".Net"};
		mailingList = true;
		
		return "populate";
	}

    @Override
	public String execute() throws Exception{
		return SUCCESS;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAbout() {
		return about;
	}

	public void setAbout(String about) {
		this.about = about;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public ArrayList<Country> getCountryList() {
		return countryList;
	}

	public void setCountryList(ArrayList<Country> countryList) {
		this.countryList = countryList;
	}

	public String[] getCommunity() {
		return community;
	}

	public void setCommunity(String[] community) {
		this.community = community;
	}

	public ArrayList<String> getCommunityList() {
		return communityList;
	}

	public void setCommunityList(ArrayList<String> communityList) {
		this.communityList = communityList;
	}

	public Boolean getMailingList() {
		return mailingList;
	}

	public void setMailingList(Boolean mailingList) {
		this.mailingList = mailingList;
	}

}