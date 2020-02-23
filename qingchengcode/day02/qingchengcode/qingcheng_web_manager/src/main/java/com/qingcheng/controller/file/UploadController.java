package com.qingcheng.controller.file;

import com.aliyun.oss.OSSClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.UUID;

@RestController
@RequestMapping("/upload")
public class UploadController {

    @Autowired
    private HttpServletRequest request;

    @PostMapping("/native")
    public String nativeUpload(@RequestParam("file") MultipartFile file){
        System.out.println("native......");
        String path=  request.getSession().getServletContext().getRealPath("img");
        String filePath= path +"/"+file.getOriginalFilename();//拼接文件名加地址
        File desFile=new File(filePath);

        //文件夹是否存在
        if(!desFile.getParentFile().exists() ){
            desFile.mkdirs();
        }
        try {
            file.transferTo(desFile);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return "http://localhost:9101/img/"+file.getOriginalFilename();
    }

    @Autowired
    private OSSClient ossClient;

    @PostMapping("/oss")
    public String ossUpload(@RequestParam("file") MultipartFile file,String folder){
        String bucketName="qingchengdianshang";
        String fileName = folder+"/"+ UUID.randomUUID()+ file.getOriginalFilename();
        try {
            ossClient.putObject(bucketName,fileName,file.getInputStream());
        } catch (IOException e) {
            e.printStackTrace();
        }

        return "https://"+bucketName+".oss-cn-beijing.aliyuncs.com/"+fileName;
    }


}
