package com.cdroidmal.entity;

import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * @author Qingyu Mao
 * @create 2017-11-04-15:28
 */
public class AppInfo {

    private Date created_on;
    private int rating;
    private String image;
    private List<Map<String, String>> tags;
    private String md5;
    private String sha1;
    private String sha256;
    private String app;
    private String package_name;
    private String company;
    private String displayed_version;
    private int size;
    private boolean stored;
    private boolean analyzed;
    private boolean is_apk;
    private boolean trusted;
    private boolean detected;
    private boolean corrupted;
    private String repo;
    private boolean on_devices;

    public Date getCreated_on() {
        return created_on;
    }

    public void setCreated_on(Date created_on) {
        this.created_on = created_on;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public List<Map<String, String>> getTags() {
        return tags;
    }

    public void setTags(List<Map<String, String>> tags) {
        this.tags = tags;
    }

    public String getMd5() {
        return md5;
    }

    public void setMd5(String md5) {
        this.md5 = md5;
    }

    public String getSha1() {
        return sha1;
    }

    public void setSha1(String sha1) {
        this.sha1 = sha1;
    }

    public String getSha256() {
        return sha256;
    }

    public void setSha256(String sha256) {
        this.sha256 = sha256;
    }

    public String getApp() {
        return app;
    }

    public void setApp(String app) {
        this.app = app;
    }

    public String getPackage_name() {
        return package_name;
    }

    public void setPackage_name(String package_name) {
        this.package_name = package_name;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getDisplayed_version() {
        return displayed_version;
    }

    public void setDisplayed_version(String displayed_version) {
        this.displayed_version = displayed_version;
    }

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }

    public boolean isStored() {
        return stored;
    }

    public void setStored(boolean stored) {
        this.stored = stored;
    }

    public boolean isAnalyzed() {
        return analyzed;
    }

    public void setAnalyzed(boolean analyzed) {
        this.analyzed = analyzed;
    }

    public boolean isIs_apk() {
        return is_apk;
    }

    public void setIs_apk(boolean is_apk) {
        this.is_apk = is_apk;
    }

    public boolean isTrusted() {
        return trusted;
    }

    public void setTrusted(boolean trusted) {
        this.trusted = trusted;
    }

    public boolean isDetected() {
        return detected;
    }

    public void setDetected(boolean detected) {
        this.detected = detected;
    }

    public boolean isCorrupted() {
        return corrupted;
    }

    public void setCorrupted(boolean corrupted) {
        this.corrupted = corrupted;
    }

    public String getRepo() {
        return repo;
    }

    public void setRepo(String repo) {
        this.repo = repo;
    }

    public boolean isOn_devices() {
        return on_devices;
    }

    public void setOn_devices(boolean on_devices) {
        this.on_devices = on_devices;
    }
}