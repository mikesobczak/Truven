package com.truvenhealth.design.standard.dao.jdbc;

import java.util.List;

import javax.sql.DataSource;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;

import com.truvenhealth.design.standard.dao.LogDaoInterface;
import com.truvenhealth.design.standard.domain.LogUserEvent;

public class LogDao implements LogDaoInterface {
	
	private final String GET_ALL_LOG_USER_EVENT_COUNT_SQL = "select count(1) from LOG_USER_EVENT";
	
	private final String GET_ALL_LOG_USER_EVENT_JQGRID_SQL = "select * from " +
			"( select a.*, ROWNUM rnum from " + 
			"( select * from LOG_USER_EVENT ORDER BY :sidx :sord ) a " + 
			"  where ROWNUM <= :max_row_to_fetch ) " +
			"where rnum > :min_row_to_fetch";
	
	private static Logger LOG = Logger.getLogger(LogDao.class);
	
	@Autowired
	private JdbcTemplate jdbcTemplate;

	private NamedParameterJdbcTemplate namedParameterJdbcTemplate;
	
	public void setDataSource(DataSource dataSource) {
		this.namedParameterJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
	}
	
	/**
	 * used by jqGrid
	 */
	public int getLogUserEventCount()
	{
		int temp = jdbcTemplate.queryForInt(GET_ALL_LOG_USER_EVENT_COUNT_SQL);
		
		return temp;
	}
	
	/**
	 * used by jqGrid
	 * 
	 * @param sidx
	 * @param sord
	 * @param max_row_to_fetch
	 * @param min_row_to_fetch
	 * @return
	 */
	public List<LogUserEvent> getAllLogUserEvent(String sidx, String sord, int max_row_to_fetch, int min_row_to_fetch) {
		
		List <LogUserEvent> jobs = null;
		
		try
		{
			String query = GET_ALL_LOG_USER_EVENT_JQGRID_SQL;
			query = query.replace(":sidx", sidx);
			query = query.replace(":sord", sord);
			query = query.replace(":max_row_to_fetch", new Integer (max_row_to_fetch).toString());
			query = query.replace(":min_row_to_fetch", new Integer (min_row_to_fetch).toString());

			LOG.debug ( "query = " + query );

			jobs = jdbcTemplate
					.query(query,
							new Object[] {},
							new BeanPropertyRowMapper<LogUserEvent>(LogUserEvent.class));


			LOG.debug ( "job history recs found = " + jobs.size() );
		}
		catch ( Exception e)
		{
			LOG.error("Exception", e );
		}
		
		return jobs;
	}

}
