package Model;

public class PsitVO {
	// ���� ����
	private String PSIT_SEQ;
	
	// ���� ����
	private String PSIT_TYPE;
	
	// ���� ����
	private String PSIT_JOB;
	
	// �������
	private String REG_DATA;
	
	// ��Ͼ��̵�
	private String M_ID;

	public PsitVO(String pSIT_SEQ, String pSIT_TYPE, String pSIT_JOB, String rEG_DATA, String m_ID) {
		super();
		PSIT_SEQ = pSIT_SEQ;
		PSIT_TYPE = pSIT_TYPE;
		PSIT_JOB = pSIT_JOB;
		REG_DATA = rEG_DATA;
		M_ID = m_ID;
	}

	public String getPSIT_SEQ() {
		return PSIT_SEQ;
	}

	public void setPSIT_SEQ(String pSIT_SEQ) {
		PSIT_SEQ = pSIT_SEQ;
	}

	public String getPSIT_TYPE() {
		return PSIT_TYPE;
	}

	public void setPSIT_TYPE(String pSIT_TYPE) {
		PSIT_TYPE = pSIT_TYPE;
	}

	public String getPSIT_JOB() {
		return PSIT_JOB;
	}

	public void setPSIT_JOB(String pSIT_JOB) {
		PSIT_JOB = pSIT_JOB;
	}

	public String getREG_DATA() {
		return REG_DATA;
	}

	public void setREG_DATA(String rEG_DATA) {
		REG_DATA = rEG_DATA;
	}

	public String getM_ID() {
		return M_ID;
	}

	public void setM_ID(String m_ID) {
		M_ID = m_ID;
	}

}
