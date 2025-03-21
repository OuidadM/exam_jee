package models;


import jakarta.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "magazine")
public class Magazine extends Document implements Serializable {
    private String publisher;
    private String issueNumber;
    private Date dateIssue;

    public String getIssueNumber() {
        return issueNumber;
    }

    public void setIssueNumber(String issueNumber) {
        this.issueNumber = issueNumber;
    }

    public Date getDateIssue() {
        return dateIssue;
    }

    public void setDateIssue(Date dateIssue) {
        this.dateIssue = dateIssue;
    }
}

