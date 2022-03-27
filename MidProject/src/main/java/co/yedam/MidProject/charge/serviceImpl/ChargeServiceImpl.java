package co.yedam.MidProject.charge.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.MidProject.charge.service.ChargeMapper;
import co.yedam.MidProject.charge.service.ChargeService;
import co.yedam.MidProject.charge.service.ChargeVO;
import co.yedam.MidProject.common.DataSource;

public class ChargeServiceImpl implements ChargeService {
	
	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private ChargeMapper map = sqlSession.getMapper(ChargeMapper.class);
	
	@Override
	public List<ChargeVO> selectChargeList() {
		return map.selectChargeList();
	}

	@Override
	public List<ChargeVO> selectCharge(ChargeVO vo) {
		return map.selectCharge(vo);
	}

	@Override
	public int insertCharge(ChargeVO vo) {
		return map.insertCharge(vo);
	}

	@Override
	public int updateCharge(ChargeVO vo) {
		return map.updateCharge(vo);
	}

	@Override
	public int deleteCharge(ChargeVO vo) {
		return map.deleteCharge(vo);
	}

}
