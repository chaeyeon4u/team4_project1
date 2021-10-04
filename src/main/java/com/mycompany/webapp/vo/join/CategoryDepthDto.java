package com.mycompany.webapp.vo.join;

import com.mycompany.webapp.vo.Pager;

import lombok.Data;

@Data
public class CategoryDepthDto {
	private String depth1;
	private String depth2;
	private String depth3;
	private Pager pager;
}
