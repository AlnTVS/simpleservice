package ru.bellintegrator.simpleservice.common.controller;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import ru.bellintegrator.simpleservice.common.Dto.ErrorDto;
import ru.bellintegrator.simpleservice.common.exception.SimpleServiceException;

@RestControllerAdvice
public class ExceptionController {

    private static final Logger logger = LogManager.getLogger(ExceptionController.class);

    @ExceptionHandler(Exception.class)
    public Object unhandledException(Exception e){
        ErrorDto error = new ErrorDto();
        error.setError(e.toString());
        return error;
    }

    @ExceptionHandler(SimpleServiceException.class)
    public Object serviceExceptions(Exception e){
        ErrorDto error = new ErrorDto();
        error.setError(e.getMessage());
        logger.error(e.getMessage() + e.getCause());
        return error;
    }
}
