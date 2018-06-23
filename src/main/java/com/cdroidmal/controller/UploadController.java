package com.cdroidmal.controller;

import com.cdroidmal.utils.DigestUtil;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

/**
 * 文件上传处理
 *
 * @author Qingyu Mao
 * @create 2017-09-05-9:21
 */
@Controller
@RequestMapping("/upload")
public class UploadController {
    private static final Logger logger = Logger.getLogger(UploadController.class);

    @RequestMapping(value = "doUpload", method = RequestMethod.POST)
    @ResponseBody
    public HashMap doUpload(MultipartHttpServletRequest request) {
        String fileName = null;
        String path = "/upload/apk/";
        String ctxPath = request.getSession().getServletContext().getRealPath(path);
        File file = new File(ctxPath);
        if (!file.exists()) {
            file.mkdir();// 创建文件根目录
        }
        Map<String, MultipartFile> fileMap = request.getFileMap();
        String sha256 = "";
        for (Map.Entry<String, MultipartFile> entity : fileMap.entrySet()) {
            MultipartFile mf = entity.getValue();// 获取上传文件对象
            fileName = mf.getOriginalFilename();// 获取文件名
            String fileExt = fileName.substring(fileName.lastIndexOf(".") + 1).toLowerCase();
            SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");
            String newFileName = df.format(new Date()) + "_" + new Random().nextInt(1000) + "." + fileExt;
            // String newFileName = DigestUtil.getFileMD5(file, "sha-256");
            String savePath = file.getPath() + "/" + newFileName;// 上传后的文件绝对路径
            logger.info("上传后路径：" + savePath);
            File savefile = new File(savePath);
            try {
                String imageUrl = "http://" + request.getServerName() + ":" + request.getLocalPort() + request.getContextPath() + path + "/" + newFileName;
                logger.info("输出路径：" + imageUrl);
                mf.transferTo(savefile);
                File file1 = new File(savePath);
                sha256 = DigestUtil.getFileMD5(file1, "sha-256");
                file1.renameTo(new File(file1.getParent() + "/" + sha256));
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        String finalSha25 = sha256;
        HashMap m = new HashMap() {{
            put("sha256", finalSha25);
        }};
        return m;
    }

}
