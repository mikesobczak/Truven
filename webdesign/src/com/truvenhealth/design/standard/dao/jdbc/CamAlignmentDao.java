package com.truvenhealth.design.standard.dao.jdbc;

import java.util.List;

import javax.sql.DataSource;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;

import com.truvenhealth.design.standard.dao.CamAlignmentDaoInterface;
import com.truvenhealth.design.standard.domain.CamAlignment;

public class CamAlignmentDao implements CamAlignmentDaoInterface {
	
	private final String GET_ONE_RECORD_CAM_ALIGNMENT_SQL = "SELECT * FROM CAM_ALIGNMENT WHERE ACIS= :acis";
	
	private final String GET_ALL_CAM_ALIGNMENT_COUNT_SQL = "select count(1) from CAM_ALIGNMENT";
	
	private final String GET_ALL_CAM_ALIGNMENT_JQGRID_SQL = "select * from " +
			"( select a.*, ROWNUM rnum from " + 
			"( select * from CAM_ALIGNMENT where acis is not null ORDER BY :sidx :sord ) a " + 
			"  where ROWNUM <= :max_row_to_fetch ) " +
			"where rnum > :min_row_to_fetch";
	
	private static Logger LOG = Logger.getLogger(CamAlignmentDao.class);
	
	@Autowired
	private JdbcTemplate jdbcTemplate;

	private NamedParameterJdbcTemplate namedParameterJdbcTemplate;
	
	public void setDataSource(DataSource dataSource) {
		this.namedParameterJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
	}
	
	/**
	 * used by jqGrid
	 */
	public int getCamAlignmentCount()
	{
		int temp = jdbcTemplate.queryForInt(GET_ALL_CAM_ALIGNMENT_COUNT_SQL);
		
		return temp;
	}
	
	//not sure about this one...
	public List<CamAlignment> getCamAlignmentRecords(String acis){
		
		List<CamAlignment> records = null;
		try
		{
			String query = GET_ONE_RECORD_CAM_ALIGNMENT_SQL;
			query = query.replace(":acis", acis);
			
			LOG.debug ( "query = " + query );

			records = jdbcTemplate
					.query(query,
							new Object[] {},
							new BeanPropertyRowMapper<CamAlignment>(CamAlignment.class));


			LOG.debug ( "cam alignment recs found = " + records.size() );
		}
		catch ( Exception e)
		{
			LOG.error("Exception", e );
		}
		
		return records;
		
	}
	
	/**
	 * 
	 */
	public CamAlignment getRecord(String acis) {
        SqlParameterSource namedParameters = new MapSqlParameterSource("acis",acis);

        @SuppressWarnings("unchecked")
        List <CamAlignment> camAlignment = namedParameterJdbcTemplate.query(GET_ONE_RECORD_CAM_ALIGNMENT_SQL, namedParameters, new BeanPropertyRowMapper<CamAlignment>(CamAlignment.class));
        
        CamAlignment camRecord = camAlignment.get(0);
        
        return camRecord;
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
	public List<CamAlignment> getAllCamAlignment(String sidx, String sord, int max_row_to_fetch, int min_row_to_fetch) {
		
		List <CamAlignment> jobs = null;
		
		try
		{
			String query = GET_ALL_CAM_ALIGNMENT_JQGRID_SQL;
			query = query.replace(":sidx", sidx);
			query = query.replace(":sord", sord);
			query = query.replace(":max_row_to_fetch", new Integer (max_row_to_fetch).toString());
			query = query.replace(":min_row_to_fetch", new Integer (min_row_to_fetch).toString());

			LOG.debug ( "query = " + query );

			jobs = jdbcTemplate
					.query(query,
							new Object[] {},
							new BeanPropertyRowMapper<CamAlignment>(CamAlignment.class));


			LOG.debug ( "job history recs found = " + jobs.size() );
		}
		catch ( Exception e)
		{
			LOG.error("Exception", e );
		}
		
		return jobs;
	}

}
