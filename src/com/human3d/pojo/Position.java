package com.human3d.pojo;

import java.io.Serializable;

/**
 * Created by rane on 12/10/14.
 */
public class Position implements Serializable{

    private String x;
    private String y;
    private String z;
    private String data;
    private String view;

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }

    public String getView() {
        return view;
    }

    public void setView(String view) {
        this.view = view;
    }

    public String getX() {
        return x;
    }

    public void setX(String x) {
        this.x = x;
    }

    public String getY() {
        return y;
    }

    public void setY(String y) {
        this.y = y;
    }

    public String getZ() {
        return z;
    }

    public void setZ(String z) {
        this.z = z;
    }
}
