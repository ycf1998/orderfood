package org.money.orderfood.component;

import org.money.orderfood.common.CommResp;
import org.money.orderfood.common.ErrorCode;
import org.springframework.validation.BindException;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

/**
 * 统一异常处理
 * @ClassName: GlobalExceptionHandler 
 * @Description: TODO
 * @author money
 * @date 2020年11月16日
 */
@RestControllerAdvice
public class GlobalExceptionHandler {

	@ExceptionHandler({BindException.class})
    public CommResp MethodArgumentNotValidExceptionHandler(BindException e) {
        ObjectError objectError = e.getBindingResult().getAllErrors().get(0);
        return CommResp.result(ErrorCode.PARAMETER_CHECK_ERROR.getCode(), objectError.getDefaultMessage());
    }
}
