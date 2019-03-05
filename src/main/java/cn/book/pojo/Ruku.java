package cn.book.pojo;

import java.math.BigDecimal;

public class Ruku {
    Integer rukuid;
    String ruku_bn;
    String ruku_author;
    String ruku_press;
    String ruku_price;
//    String ruku_pic;
    String ruku_date;
    String ruku_n;

    public Integer getRukuid() {
        return rukuid;
    }

    public void setRukuid(Integer rukuid) {
        this.rukuid = rukuid;
    }

    public String getRuku_bn() {
        return ruku_bn;
    }

    public void setRuku_bn(String ruku_bn) {
        this.ruku_bn = ruku_bn;
    }

    public String getRuku_author() {
        return ruku_author;
    }

    public void setRuku_author(String ruku_author) {
        this.ruku_author = ruku_author;
    }

    public String getRuku_press() {
        return ruku_press;
    }

    public void setRuku_press(String ruku_press) {
        this.ruku_press = ruku_press;
    }

    public String getRuku_price() {
        return ruku_price;
    }

    public void setRuku_price(String ruku_price) {
        this.ruku_price = ruku_price;
    }
//
//    public String getRuku_pic() {
//        return ruku_pic;
//    }
//
//    public void setRuku_pic(String ruku_pic) {
//        this.ruku_pic = ruku_pic;
//    }

    public String getRuku_date() {
        return ruku_date;
    }

    public void setRuku_date(String ruku_date) {
        this.ruku_date = ruku_date;
    }

    public String getRuku_n() {
        return ruku_n;
    }

    public void setRuku_n(String ruku_n) {
        this.ruku_n = ruku_n;
    }

    @Override
    public String toString() {
        return "Ruku{" +
                ", ruku_bn='" + ruku_bn + '\'' +
                ", ruku_author='" + ruku_author + '\'' +
                ", ruku_press='" + ruku_press + '\'' +
                ", ruku_date='" + ruku_date + '\'' +
                '}';
    }
}
