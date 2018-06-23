/**
 * Copyright 2017 bejson.com
 */
package com.cdroidmal.entity.analysis;

/**
 * Auto-generated: 2017-11-04 19:17:46
 *
 * @author bejson.com (i@bejson.com)
 * @website http://www.bejson.com/java2pojo/
 */
public class AnalysisReport {

    private String status;
    private Cuckoo cuckoo;
    private Droidbox droidbox;
    private String scanning_date;
    private String sha256;
    private Androguard androguard;

    public void setStatus(String status) {
        this.status = status;
    }

    public String getStatus() {
        return status;
    }

    public void setCuckoo(Cuckoo cuckoo) {
        this.cuckoo = cuckoo;
    }

    public Cuckoo getCuckoo() {
        return cuckoo;
    }

    public void setDroidbox(Droidbox droidbox) {
        this.droidbox = droidbox;
    }

    public Droidbox getDroidbox() {
        return droidbox;
    }

    public String getScanning_date() {
        return scanning_date;
    }

    public void setScanning_date(String scanning_date) {
        this.scanning_date = scanning_date;
    }

    public void setSha256(String sha256) {
        this.sha256 = sha256;
    }

    public String getSha256() {
        return sha256;
    }

    public void setAndroguard(Androguard androguard) {
        this.androguard = androguard;
    }

    public Androguard getAndroguard() {
        return androguard;
    }

}