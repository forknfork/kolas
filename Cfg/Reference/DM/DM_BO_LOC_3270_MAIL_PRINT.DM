#[Data Manager]60005605 ▶ DM_BO_LOC_3270_MAIL_PRINT
ALIAS=DM_BO_LOC_3270_MAIL_PRINT
CONNECTION_INFO=kolas2@k2up/kolas2#[]
TBL_NAME=LH_STORAGE_V01 CL,BO_BOOK_TBL B,IDX_BO_TBL I,CO_LOAN_USER_TBL CLU,CO_LOAN_MAIL_SEND_TBL CLMS
CONDITION=CL.BOOK_KEY=B.REC_KEY AND B.SPECIES_KEY=I.REC_KEY AND CL.USER_KEY=CLU.REC_KEY AND CLMS.LOAN_KEY =CL.REC_KEY AND CL.PUBLISH_FORM_CODE='MO'
EXTRA_CONDITION=
#Field Alias|Field Name|Field Type|InitValue|Data Type|
IBS_청구_복본기호|B.COPY_CODE|str|||
책KEY|B.REC_KEY|int|||
등록번호|B.REG_NO|str|||
IBS_청구_별치기호_코드|B.SEPARATE_SHELF_CODE|str|||
자료실|B.SHELF_LOC_CODE|str|||
자료상태|B.WORKING_STATUS|str|||
대출일|CL.LOAN_DATE|str|||
대출/반납정보KEY|CL.REC_KEY|int|||
예약일|CL.RESERVATION_DATE|str|||
예약만기일|CL.RESERVATION_EXPIRE_DATE|str|||
반납일|CL.RETURN_DATE|str|||
반납예정일|CL.RETURN_PLAN_DATE|str|||
대출상태|CL.STATUS|str|||
메일발송일|CLMS.MAIL_SEND_DATE|str|||
자택주소|CLU.H_ADDR1|str|||
근무지주소|CLU.W_ADDR1|str|||
주민등록번호|CLU.CIVIL_NO|str|||
E_MAIL|CLU.E_MAIL|str|||
가족ID|CLU.FID_KEY|int|||
핸드폰|CLU.HANDPHONE|str|||
불량회원구분|CLU.USER_CLASS|str|||
최종대출일|CLU.LAST_LOAN_DATE|str|||
대출직급정보|CLU.USER_CLASS_CODE|str|||
대출소속정보|CLU.USER_POSITION_CODE|str|||
우편발송지역|CLU.MAIL_SEND_AREA|str|||
대출자이름|CLU.NAME|str|||
자택전화번호|CLU.H_PHONE|str|||
근무지전화번호|CLU.W_PHONE|str|||
대출자KEY|CLU.REC_KEY|int|||
비고|CLU.REMARK|str|||
대출자ID|CLU.USER_ID|str|||
대출자번호|CLU.USER_NO|str|||
자택우편번호|CLU.H_ZIPCODE|str|||
근무지우편번호|CLU.W_ZIPCODE|str|||
저작자|CL.AUTHOR|str|||
IBS_청구_도서기호|B.BOOK_CODE|str|||
IBS_청구_분류기호|B.CLASS_NO|str|||
발행자|CL.PUBLISHER|str|||
서명|CL.TITLE|str|||
IBS_청구_권책기호|B.VOL_CODE|str|||
번호||||UDF|
청구기호||||UDF|
학교|CLU.SCHOOL|str|||
학년|CLU.GRADE|int|||
반|CLU.CLASS|int|||
교번|CLU.CLASS_NO|int|||
관리구분|B.MANAGE_CODE|str|||
대출형태|DECODE( CL.LOAN_TYPE_CODE , '0' , '일반', '1' , '특별' , '2' , '관내', '3' , '무인' , '4' , '장기', '' )|str|||
반납형태|DECODE( CL.RETURN_TYPE_CODE , '0' , '일반', '1' , '일괄' , '2' , '소급', '3' , '무인' , '' )|str|||
부록자료|DECODE( B.BOOK_APPENDIX_FLAG, 'A', 'V', '' )|str|||
