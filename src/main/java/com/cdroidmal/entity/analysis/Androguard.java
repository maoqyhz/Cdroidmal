/**
 * Copyright 2017 bejson.com
 */
package com.cdroidmal.entity.analysis;

import java.util.List;

/**
 * Auto-generated: 2017-11-04 19:17:46
 *
 * @author bejson.com (i@bejson.com)
 * @website http://www.bejson.com/java2pojo/
 */
public class Androguard {

    private List<String> activities;
    private List<String> providers;
    private String main_activity;
    private String app_name;
    private String package_name;
    private List<String> receivers;
    private List<String> new_permissions;
    private Functionalities functionalities;
    private String signature_name;
    private int min_sdk_version;
    private String version_code;
    private List<String> libraries;
    private Dexes dexes;
    private String displayed_version;
    private Certificate certificate;
    private String max_sdk_version;
    private List<String> services;
    private int target_sdk_version;
    private List<String> filters;
    private List<String> urls;
    private List<String> permissions;

    public void setActivities(List<String> activities) {
        this.activities = activities;
    }

    public List<String> getActivities() {
        return activities;
    }

    public void setProviders(List<String> providers) {
        this.providers = providers;
    }

    public List<String> getProviders() {
        return providers;
    }

    public void setMain_activity(String main_activity) {
        this.main_activity = main_activity;
    }

    public String getMain_activity() {
        return main_activity;
    }

    public void setApp_name(String app_name) {
        this.app_name = app_name;
    }

    public String getApp_name() {
        return app_name;
    }

    public void setPackage_name(String package_name) {
        this.package_name = package_name;
    }

    public String getPackage_name() {
        return package_name;
    }

    public void setReceivers(List<String> receivers) {
        this.receivers = receivers;
    }

    public List<String> getReceivers() {
        return receivers;
    }

    public void setNew_permissions(List<String> new_permissions) {
        this.new_permissions = new_permissions;
    }

    public List<String> getNew_permissions() {
        return new_permissions;
    }

    public void setFunctionalities(Functionalities functionalities) {
        this.functionalities = functionalities;
    }

    public Functionalities getFunctionalities() {
        return functionalities;
    }

    public void setSignature_name(String signature_name) {
        this.signature_name = signature_name;
    }

    public String getSignature_name() {
        return signature_name;
    }

    public void setMin_sdk_version(int min_sdk_version) {
        this.min_sdk_version = min_sdk_version;
    }

    public int getMin_sdk_version() {
        return min_sdk_version;
    }

    public void setVersion_code(String version_code) {
        this.version_code = version_code;
    }

    public String getVersion_code() {
        return version_code;
    }

    public void setLibraries(List<String> libraries) {
        this.libraries = libraries;
    }

    public List<String> getLibraries() {
        return libraries;
    }

    public void setDexes(Dexes dexes) {
        this.dexes = dexes;
    }

    public Dexes getDexes() {
        return dexes;
    }

    public void setDisplayed_version(String displayed_version) {
        this.displayed_version = displayed_version;
    }

    public String getDisplayed_version() {
        return displayed_version;
    }

    public void setCertificate(Certificate certificate) {
        this.certificate = certificate;
    }

    public Certificate getCertificate() {
        return certificate;
    }

    public void setMax_sdk_version(String max_sdk_version) {
        this.max_sdk_version = max_sdk_version;
    }

    public String getMax_sdk_version() {
        return max_sdk_version;
    }

    public void setServices(List<String> services) {
        this.services = services;
    }

    public List<String> getServices() {
        return services;
    }

    public void setTarget_sdk_version(int target_sdk_version) {
        this.target_sdk_version = target_sdk_version;
    }

    public int getTarget_sdk_version() {
        return target_sdk_version;
    }

    public void setFilters(List<String> filters) {
        this.filters = filters;
    }

    public List<String> getFilters() {
        return filters;
    }

    public void setPermissions(List<String> permissions) {
        this.permissions = permissions;
    }

    public List<String> getPermissions() {
        return permissions;
    }

    public List<String> getUrls() {
        return urls;
    }

    public void setUrls(List<String> urls) {
        this.urls = urls;
    }
}