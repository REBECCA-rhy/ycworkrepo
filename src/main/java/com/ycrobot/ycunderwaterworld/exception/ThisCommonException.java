package com.ycrobot.ycunderwaterworld.exception;

public class ThisCommonException extends RuntimeException {


	public ThisCommonException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
		super(message, cause, enableSuppression, writableStackTrace);
	}

	public ThisCommonException(String message, Throwable cause) {
		super(message, cause);
	}

	public ThisCommonException(String message) {
		super(message);
	}
	

}
