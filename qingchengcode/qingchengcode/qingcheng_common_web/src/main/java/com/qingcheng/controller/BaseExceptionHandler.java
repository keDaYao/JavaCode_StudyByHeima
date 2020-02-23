package com.qingcheng.controller;

import com.qingcheng.entity.Result;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;


//是控制器的通知类
@ControllerAdvice
public class BaseExceptionHandler {

    //private Logger logger= LoggerFactory.getLogger(BaseExceptionHandler.class);


    @ExceptionHandler(Exception.class)
    @ResponseBody  //输出到json的返回值上
    public Result error(Exception e){
        e.printStackTrace();
        System.out.println("调用了异常处理");
        return new Result(1,e.getMessage());
    }

}
