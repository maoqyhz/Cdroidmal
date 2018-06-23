package com.cdroidmal.entity;

/**
 * @author Qingyu Mao
 * @create 2017-11-05-13:36
 */
public class Report {
    private String sha256;
    private String appinfo;
    private String report;

    public String getSha256() {
        return sha256;
    }

    public void setSha256(String sha256) {
        this.sha256 = sha256;
    }

    public String getAppinfo() {
        return appinfo;
    }

    public void setAppinfo(String appinfo) {
        this.appinfo = appinfo;
    }

    public String getReport() {
        return report;
    }

    public void setReport(String report) {
        this.report = report;
    }
}
