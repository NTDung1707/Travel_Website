package model;

import java.io.Serializable;

public class Product implements Serializable {

    private int id;
    private String name;
    private float price;
    private int quantityInStock;
    private String imageURL;

    public Product() {

    }

    public Product(int id, String name, float price, int quantityInStock, String imgUrl) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.quantityInStock = quantityInStock;
        this.imageURL = imgUrl;
    }

    public Product(String name, float price, int quantityInStock, String imgUrl) {
        this.name = name;
        this.price = price;
        this.quantityInStock = quantityInStock;
        this.imageURL = imgUrl;
    }

    // Getters and setters for attributes
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public int getQuantityInStock() {
        return quantityInStock;
    }

    public void setQuantityInStock(int quantityInStock) {
        this.quantityInStock = quantityInStock;
    }

    public String getImageURL() {
        return imageURL;
    }

    public void setImageURL(String imageURL) {
        this.imageURL = imageURL;
    }

    @Override
    public String toString() {
        return "Book{" + "id=" + id + ", title=" + name +  ", price=" + price + ", quantityInStock=" + quantityInStock + ", imageURL=" + imageURL + ", category=" + '}';
    }

}
