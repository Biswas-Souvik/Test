package com.Model;

import java.util.UUID;

public class User {
    private String id;
    private String name;
    private String email;
    private String contactNo;
    private String address;
    private String pincode;
    private String password;

    public User() {
        this.id = UUID.randomUUID().toString();
    }

    public User(String name, String email, String contactNo, String address, String pincode, String password) {
        this.id = UUID.randomUUID().toString();
        this.name = name;
        this.email = email;
        this.contactNo = contactNo;
        this.address = address;
        this.pincode = address;
        this.password = password;
    }

    // Getters and Setters
    public String getId() { return id; }
    public String getName() { return name; }
    public void setName(String name) { this.name = name; }
    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }
    public String getContactNo() { return contactNo; }
    public void setContactNo(String contactNo) { this.contactNo = contactNo; }
    public String getAddress() { return address; }
    public void setAddress(String address) { this.address = address; }
    
    public String getPincode() { return pincode; }
    public void setPincode(String pincode) { this.pincode = pincode; }
    
    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }
}

