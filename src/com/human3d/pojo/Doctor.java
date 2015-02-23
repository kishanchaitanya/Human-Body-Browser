package com.human3d.pojo;

import java.io.Serializable;

/**
 * Created by rane on 12/10/14.
 */
public class Doctor implements Serializable{

    private String docName;
    private String docId;
    private String emailAddress;
    private String password;

    public String getDocName() {
        return docName;
    }

    public void setDocName(String docName) {
        this.docName = docName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmailAddress() {
        return emailAddress;
    }

    public void setEmailAddress(String emailAddress) {
        this.emailAddress = emailAddress;
    }

    public String getDocId() {
        return docId;
    }

    public void setDocId(String docId) {
        this.docId = docId;
    }
}
