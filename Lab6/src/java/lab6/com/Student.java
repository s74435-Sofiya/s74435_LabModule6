/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package lab6.com;

/**
 *
 * @author ainin sofiya
 */

public class Student {

    private String stuid;
    private String stuname;
    private String stuprogram;
    private String address;

    public String getStuid() {
        return stuid;
    }

    public void setStuid(String stuid) {

        // Regular Expression
        if(stuid.matches("[A-Z]{2}[0-9]{5}")) {
            this.stuid = stuid;
        }
        else {
            throw new IllegalArgumentException(
                "Invalid Student ID Format!"
            );
        }
    }

    public String getStuname() {
        return stuname;
    }

    public void setStuname(String stuname) {
        this.stuname = stuname;
    }

    public String getStuprogram() {
        return stuprogram;
    }

    public void setStuprogram(String stuprogram) {
        this.stuprogram = stuprogram;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
