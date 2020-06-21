package com.ku.deepmunhakdo.vo;

public class SATQuestionVO {
	
	private String questionIdx; 
	private int questionType;
	private String question;
	private String text;
	private String choice1;
	private String choice2;
	private String choice3;
	private String choice4;
	private String choice5;
	private String answer;
	private String extraText1;
	private String extraText2;
	private String extraText3;
	
	public SATQuestionVO() {}

	public SATQuestionVO(String questionIdx, int questionType, String question, String text, String choice1,
			String choice2, String choice3, String choice4, String choice5, String answer, String extraText1,
			String extraText2, String extraText3) {
		super();
		this.questionIdx = questionIdx;
		this.questionType = questionType;
		this.question = question;
		this.text = text;
		this.choice1 = choice1;
		this.choice2 = choice2;
		this.choice3 = choice3;
		this.choice4 = choice4;
		this.choice5 = choice5;
		this.answer = answer;
		this.extraText1 = extraText1;
		this.extraText2 = extraText2;
		this.extraText3 = extraText3;
	}

	public String getQuestionIdx() {
		return questionIdx;
	}

	public void setQuestionIdx(String questionIdx) {
		this.questionIdx = questionIdx;
	}

	public int getQuestionType() {
		return questionType;
	}

	public void setQuestionType(int questionType) {
		this.questionType = questionType;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getChoice1() {
		return choice1;
	}

	public void setChoice1(String choice1) {
		this.choice1 = choice1;
	}

	public String getChoice2() {
		return choice2;
	}

	public void setChoice2(String choice2) {
		this.choice2 = choice2;
	}

	public String getChoice3() {
		return choice3;
	}

	public void setChoice3(String choice3) {
		this.choice3 = choice3;
	}

	public String getChoice4() {
		return choice4;
	}

	public void setChoice4(String choice4) {
		this.choice4 = choice4;
	}

	public String getChoice5() {
		return choice5;
	}

	public void setChoice5(String choice5) {
		this.choice5 = choice5;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public String getExtraText1() {
		return extraText1;
	}

	public void setExtraText1(String extraText1) {
		this.extraText1 = extraText1;
	}

	public String getExtraText2() {
		return extraText2;
	}

	public void setExtraText2(String extraText2) {
		this.extraText2 = extraText2;
	}

	public String getExtraText3() {
		return extraText3;
	}

	public void setExtraText3(String extraText3) {
		this.extraText3 = extraText3;
	}

}
