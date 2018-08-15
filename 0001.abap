*------------------------------------------------*
* ABAP Tip #1
*------------------------------------------------*
* Use TRY CATCH and Table expressions when 
* reading records from Internal Table to handle
* missing records instead of SY-SUBRC
*------------------------------------------------*
TRY.
    lv_name = lt_pa0002[ pernr = lv_pernr ]-cname.
CATCH cx_sy_itab_line_not_found.
    lv_name = '<No Name>'
ENDTRY.

*--------------- www.fareez.info-----------------*