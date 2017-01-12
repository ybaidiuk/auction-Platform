package model.entitys;


import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by y.baidiuk on 19/11/2016.
 * <p>
 * Implementiert die Variablen für die Klasse User welche an Admin, Customer und Resaercher vererbt werden
 */

@Entity
@Table(name = "SWE_USER")
public class User implements java.io.Serializable {
    static final long serialVersionUID = 111L;
    private String firstName;
    private String lastName;
    private String email;
    private String password;
    private String dateOfBirth;
    private String country;
    private String adresse;
    private String gender;
    private Set<Integer> myWatchList = new HashSet<>();
    private Set<Product> myProducts = new HashSet<>();


    public User() {
    }

    public User(String firstName, String lastName, String email, String password, String dateOfBirth, String country, String adresse, String gender) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.password = password;
        this.dateOfBirth = dateOfBirth;
        this.country = country;
        this.adresse = adresse;
        this.gender = gender;
    }

    @Column(name = "firstname", nullable = false, length = 30)
    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    @Column(name = "lastname", nullable = false, length = 30)
    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    @Id
    @Column(name = "EMAIL", unique = true, nullable = false, length = 40)
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Column(name = "password", nullable = false, length = 30)
    public String getPassword() {
        return this.password;
    }

    public void setPassword(String username) {
        this.password = username;
    }

    @Column(name = "dateOfBirth", nullable = false, length = 10)
    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    @Column(name = "country", nullable = false, length = 30)
    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    @Column(name = "adresse", nullable = false, length = 60)
    public String getAdresse() {
        return adresse;
    }

    public void setAdresse(String adresse) {
        this.adresse = adresse;
    }

    @Column(name = "gender", nullable = false, length = 1)
    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    @ElementCollection
    @CollectionTable(name="SWE_MyWatchList", joinColumns=@JoinColumn(name="EMAIL"))
    @Column(name="productId")
    public Set<Integer> getMyWatchList() {
        return myWatchList;
    }

    public void setMyWatchList(Set<Integer> myWatchList) {
        this.myWatchList = myWatchList;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "seller")
    public Set<Product> getMyProducts() {
        return myProducts;
    }

    public void setMyProducts(Set<Product> myProducts) {
        this.myProducts = myProducts;
    }

    @Override
    public String toString() {
        return "User{" +
                "firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", dateOfBirth='" + dateOfBirth + '\'' +
                ", country='" + country + '\'' +
                ", adresse='" + adresse + '\'' +
                ", gender='" + gender + '\'' +
                '}';
    }
}