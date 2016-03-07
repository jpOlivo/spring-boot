package spring.boot.controller;

import java.util.Collections;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class StressTestController {

	private JdbcTemplate jdbcTemplate;

	@Autowired
	public StressTestController(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@SuppressWarnings("unchecked")
	@ResponseBody
	@RequestMapping("/segment/{id}")
	List<Map<String, Object>> getSegmentById(@PathVariable Long id) {
		try {
			return jdbcTemplate.queryForList("SELECT * FROM segment WHERE segment_id=?", id);
		} catch (EmptyResultDataAccessException ex) {
			return Collections.EMPTY_LIST;
		}
	}

}
