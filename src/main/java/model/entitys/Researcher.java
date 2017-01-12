package model.entitys;

/**
 * Created by y.baidiuk on 26/11/2016.
 */

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Klasse Researcher erbt von Klasse User
 * wird um zusätzliche Funktionen erweitert die das Abrufen von Daten ermöglicht
 */
@Entity
@Table(name = "SWE_USER")
public class Researcher extends User {
    /**
     *
     * @param firstName Vorname
     * @param lastName Nachname
     * @param email User-Email
     * @param password Passwort
     * @param dateOfBirth Geburtadatum
     * @param country Land
     * @param adresse Adresse
     * @param gender Geschlecht
     */
    public Researcher(String firstName, String lastName, String email, String password, String dateOfBirth, String country, String adresse, String gender) {
        super(firstName, lastName, email, password, dateOfBirth, country, adresse, gender);
    }
}
