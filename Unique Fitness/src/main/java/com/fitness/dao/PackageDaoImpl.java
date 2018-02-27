package com.fitness.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.fitness.Model.Package;

@Repository
public class PackageDaoImpl implements PackageDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public List<Package> getAllPackages() {
		
		
		return jdbcTemplate.query("select * from package", new RowMapper<Package>() {

			@Override
			public Package mapRow(ResultSet rs, int row) throws SQLException {
				Package p = new Package();
				p.setPkgId(rs.getInt(1));
				p.setPkgName(rs.getString(2));
				p.setPkgAmount(rs.getDouble(3));
				p.setPkgDuration(rs.getInt(4));
				p.setPkgStatus(rs.getString(5));
				
				return p;
				
			}
			
		});
	}

}
