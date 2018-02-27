package com.fitness.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class DownloadDaoImpl implements DownloadDao{
	@Autowired
	private JdbcTemplate jdbcTemplate;
}
