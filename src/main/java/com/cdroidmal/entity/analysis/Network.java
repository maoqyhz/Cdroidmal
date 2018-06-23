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
public class Network {

    private List<Http> http;
    private List<String> smtp;
    private List<String> hosts;
    private List<Dns> dns;
    private List<Domains> domains;
    private List<String> irc;
    public void setHttp(List<Http> http) {
         this.http = http;
     }
     public List<Http> getHttp() {
         return http;
     }

    public void setSmtp(List<String> smtp) {
         this.smtp = smtp;
     }
     public List<String> getSmtp() {
         return smtp;
     }

    public void setHosts(List<String> hosts) {
         this.hosts = hosts;
     }
     public List<String> getHosts() {
         return hosts;
     }

    public void setDns(List<Dns> dns) {
         this.dns = dns;
     }
     public List<Dns> getDns() {
         return dns;
     }

    public void setDomains(List<Domains> domains) {
         this.domains = domains;
     }
     public List<Domains> getDomains() {
         return domains;
     }

    public void setIrc(List<String> irc) {
         this.irc = irc;
     }
     public List<String> getIrc() {
         return irc;
     }

}