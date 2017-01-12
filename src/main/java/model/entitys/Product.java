package model.entitys;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Date;
import java.text.DecimalFormat;
import java.util.Calendar;

/**
 * Created by y.baidiuk on 15/12/2016.
 */

@Entity
@Table(name = "SWE_PRODUCT")
public class Product implements Serializable {
    static final long serialVersionUID = 222L;
    private DecimalFormat df = new DecimalFormat("0.00");

    private int productId;
    private String title;
    private String category;
    private String description;
    private double startPrice;
    private double currentPrice;
    private double sofortKaufPrice;
    private User seller;
    private String highestBidderEmail;
    private String image;
    private boolean sold = false;
    private int durationAuction;
    private Date addDay;

    public Product() {
    }


    public Product(String title, String category, String description, double startPrice, double sofortKaufPrice, User seller, String image, int durationAuction) {
        this.title = title;
        this.category = category;
        this.description = description;
        this.startPrice = startPrice;
        this.sofortKaufPrice = sofortKaufPrice;
        this.seller = seller;
        this.image = image;
        this.durationAuction = durationAuction;
    }

    @Id
    @Column(name = "productId", unique = true, nullable = false, precision = 7)
    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    @Column(name = "ADDDAY")
    public Date getAddDay() {
        return addDay;
    }

    public void setAddDay(Date addDay) {
        this.addDay = addDay;
    }




    @Column(name = "durationAuction", nullable = false, precision = 2)
    public int getDurationAuction () {
        return durationAuction;
    }

    public void setDurationAuction(int durationAuction) {this.durationAuction = durationAuction;}






    @Column(name = "Title", nullable = false, length = 40)
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }
    @Column(name = "Category", nullable = false, length = 30)
    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }
    @Column(name = "Description", nullable = false, length = 300)
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Column(name = "STARTPRICE", nullable = true, precision = 8)
    public double getStartPrice() {
        return startPrice;
    }

    public void setStartPrice(double startPrice) {
        this.startPrice = startPrice;
    }
    @Column(name = "CurrentPrice", nullable = true, precision = 8)
    public double getCurrentPrice() {
        return currentPrice;
    }

    public void setCurrentPrice(double currentPrice) {
        this.currentPrice = currentPrice;
    }
    @Column(name = "SOFORTKAUFPRICE", nullable = true, precision = 8,scale = 2)
    public double getSofortKaufPrice() {
        return sofortKaufPrice;
    }

    public void setSofortKaufPrice(double sofortKaufPrice) {
        this.sofortKaufPrice = sofortKaufPrice;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "SELLER", nullable = false)
    public User getSeller() {
        return seller;
    }

    public void setSeller(User seller) {
        this.seller = seller;
    }

    @Column(name = "HighestBidderEmail", nullable = true, length = 40)
    public String getHighestBidderEmail() {
        return highestBidderEmail;
    }

    public void setHighestBidderEmail(String highestBidderEmail) {
        this.highestBidderEmail = highestBidderEmail;
    }

    @Column(name = "Image", nullable = false, length = 30)
    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Column(name = "Sold")
    public boolean isSold() {
        return sold;
    }

    public void setSold(boolean sold) {
        this.sold = sold;
    }

    @Override
    public String toString() {
        return "Product{" +
                "productId=" + productId +
                ", title='" + title + '\'' +
                ", category='" + category + '\'' +
                ", description='" + description + '\'' +
                ", startPrice=" + startPrice +
                ", currentPrice=" + currentPrice +
                ", sofortKaufPrice=" + sofortKaufPrice +
                ", seller='" + seller + '\'' +
                ", highestBidderEmail='" + highestBidderEmail + '\'' +
                ", image='" + image + '\'' +
                ", sold=" + sold +
                ", durationAuction=" + durationAuction +
                ", AddCal=" + addDay +
                '}';
    }
}