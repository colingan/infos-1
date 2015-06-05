package com.github.colingan.infos.web.main.model;

import java.io.Serializable;

import com.github.colingan.infos.dal.blogs.bo.Blog;
import com.github.colingan.infos.dal.category.bo.Category;

public class BlogWrapper implements Serializable {

	private static final long serialVersionUID = -810449123762628901L;
	private Category subCategory;
	private Blog blog;
	public BlogWrapper(Category subCategory, Blog blog) {
		super();
		this.subCategory = subCategory;
		this.blog = blog;
	}
	public Category getSubCategory() {
		return subCategory;
	}
	public void setSubCategory(Category subCategory) {
		this.subCategory = subCategory;
	}
	public Blog getBlog() {
		return blog;
	}
	public void setBlog(Blog blog) {
		this.blog = blog;
	}
	
	
}
