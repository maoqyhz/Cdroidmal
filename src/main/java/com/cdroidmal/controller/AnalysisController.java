package com.cdroidmal.controller;

import com.alibaba.fastjson.JSON;
import com.cdroidmal.entity.AppInfo;
import com.cdroidmal.entity.Report;
import com.cdroidmal.entity.analysis.AnalysisReport;
import com.cdroidmal.utils.JdbcUtils;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Date;
import java.util.concurrent.TimeUnit;

/**
 * @author Qingyu Mao
 * @create 2017-11-02-20:59
 */
@Controller
@RequestMapping("/analysis")
public class AnalysisController {
    private static final Logger logger = LoggerFactory.getLogger(AnalysisController.class);

    @RequestMapping("/fetchReport")
    public ModelAndView fetchReport(String sha256) throws IOException, InterruptedException, SQLException {

        QueryRunner qr = new QueryRunner();
        String sql = "select * from report where sha256 = ?;";
        Report report = qr.query(JdbcUtils.getConnection(), sql, new BeanHandler<>(Report.class), sha256);
        ModelAndView modelAndView = new ModelAndView("analysis");
        AppInfo apk;
        AnalysisReport analysisReport;
        String reportStr = "";
        if (report != null) {
            reportStr = report.getReport();
            apk = JSON.parseObject(report.getAppinfo(), AppInfo.class);
            analysisReport = JSON.parseObject(report.getReport(), AnalysisReport.class);
        } else {
            OkHttpClient client = client = new OkHttpClient.Builder()
                    .connectTimeout(10, TimeUnit.SECONDS)
                    .readTimeout(20, TimeUnit.SECONDS)
                    .build();
            Request request = new Request.Builder()
                    .url("https://api.koodous.com/apks/" + sha256)
                    .build();
            Response response = client.newCall(request).execute();
            String jsonStr = response.body().string();
            apk = JSON.parseObject(jsonStr, AppInfo.class);
            apk.setCreated_on(new Date(apk.getCreated_on().getTime() * 1000));

            request = new Request.Builder()
                    .url("https://api.koodous.com/apks/" + sha256 + "/analysis")
                    .build();

            response = client.newCall(request).execute();
            String reports = response.body().string();
            analysisReport = JSON.parseObject(reports, AnalysisReport.class);
            reportStr = reports;
        }
        modelAndView.addObject("apk", apk);
        modelAndView.addObject("report", analysisReport);
        modelAndView.addObject("str", reportStr);
        return modelAndView;
    }

    @RequestMapping("/getReport")
    @ResponseBody
    public String getReport(String sha256) throws IOException {
        OkHttpClient client = client = new OkHttpClient.Builder()
                .connectTimeout(10, TimeUnit.SECONDS)
                .readTimeout(20, TimeUnit.SECONDS)
                .build();
        Request request = new Request.Builder()
                .url("https://api.koodous.com/apks/" + sha256 + "/analysis")
                .build();
        Response response = client.newCall(request).execute();
        String report = response.body().string();
        return report;
    }
}
