package co.yedam.MidProject.charge.service;

import java.util.List;

public interface ChargeMapper {
	
	List<ChargeVO> selectChargeList();
	List<ChargeVO> selectCharge(ChargeVO vo);
	int insertCharge(ChargeVO vo);
	int updateCharge(ChargeVO vo);
	int deleteCharge(ChargeVO vo);
}
