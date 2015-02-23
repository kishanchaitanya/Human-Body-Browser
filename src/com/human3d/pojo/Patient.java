package com.human3d.pojo;

import java.io.Serializable;
import java.util.List;

/**
 * Created by rane on 12/10/14.
 */
public class Patient implements Serializable {
    private String pName;
    private String pId;
    private List<Position> posList;

    public String getpName() {
        return pName;
    }

    public void setpName(String pName) {
        this.pName = pName;
    }

    public String getpId() {
        return pId;
    }

    public void setpId(String pId) {
        this.pId = pId;
    }

    public List<Position> getPosList() {
        return posList;
    }

    public void setPosList(List<Position> posList) {
        this.posList = posList;
    }
}
