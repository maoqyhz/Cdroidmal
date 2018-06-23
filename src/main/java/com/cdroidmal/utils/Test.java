package com.cdroidmal.utils;

import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

import java.io.IOException;

/**
 * @author Qingyu Mao
 * @create 2017-11-20-13:55
 */
public class Test {
    public static void main(String[] args) throws IOException {
        OkHttpClient client = new OkHttpClient();

        Request request = new Request.Builder()
                .url("http://jbk.39.net/yyz/")
                .get()
                .addHeader("cache-control", "no-cache")
                .addHeader("postman-token", "3df2b902-3f48-efb0-3b26-30a74fb2dddc")
                .build();

        Response response = client.newCall(request).execute();
        System.out.println(response.body());

    }
}
