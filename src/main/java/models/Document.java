package models;

import com.google.gson.annotations.Expose;
import jakarta.persistence.*;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Entity
@Inheritance(strategy = InheritanceType.JOINED)
public abstract class Document implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Expose
    private Long id;

    @Expose
    private String title;

    @Expose
    @Temporal(TemporalType.DATE)
    private Date dateCreat;

    @ManyToMany(cascade = {CascadeType.PERSIST})
    @JoinTable(name = "borrow",
            joinColumns = @JoinColumn(name = "document_id"),
            inverseJoinColumns = @JoinColumn(name = "user_id"))
    private List<User> users = new ArrayList<>();

    public Document() {
        // Constructeur par défaut requis pour la sérialisation
    }

    public Date getDateCreat() {
        return dateCreat;
    }

    public void setDateCreat(Date dateCreat) {
        this.dateCreat = dateCreat;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public List<User> getUsers() {
        return users;
    }

    public void setUsers(List<User> users) {
        this.users = users;
    }
}
