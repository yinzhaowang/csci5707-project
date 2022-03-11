---------------------------------


SELECT  `R1`.`Scheduled departure time` AS `First start time`, `R1`.`Scheduled arrival time` AS `First arrival time`, 'ORD' AS `Transfer airport`, `R2`.`Scheduled departure time` AS  `Second depature time`,`R2`.`Scheduled arrival Time` AS `Final arrival time`, TIMEDIFF(STR_TO_DATE(`R2`.`Scheduled arrival Time`, '%H:%i'), STR_TO_DATE(`R1`.`Scheduled departure time`, '%H:%i')) AS `Duration`, 'MSP:ORD:DFW'
FROM (
    # this is from ORD to DFW
SELECT DISTINCT `dfw_a_aa`.`Flight Number`, `dfw_a_aa`.`Scheduled Arrival Time`, `ord_d_aa`.`Scheduled departure time`, TIMEDIFF( `dfw_a_aa`.`Scheduled Arrival Time`, `ord_d_aa`.`Scheduled departure time`) AS `duration`
FROM `dfw_a_aa` 
INNER JOIN `ord_d_aa` ON `ord_d_aa`.`Flight Number` = `dfw_a_aa`.`Flight Number`
WHERE `dfw_a_aa`.`Date (MM/DD/YYYY)` = '07/01/2021'
GROUP BY `dfw_a_aa`.`Flight Number`
ORDER BY `dfw_a_aa`.`Date (MM/DD/YYYY)` ASC, `Scheduled Arrival Time`+0 ASC
LIMIT 7) AS `R2`,

(	# FROM MSP to ORD
    SELECT DISTINCT `ord_a_dl`.`Flight Number`, `ord_a_dl`.`Scheduled Arrival Time`, `msp_d_dl`.`Scheduled departure time`, TIMEDIFF( `ord_a_dl`.`Scheduled Arrival Time`, `msp_d_dl`.`Scheduled departure time`) AS `duration`
FROM `ord_a_dl`
INNER JOIN `msp_d_dl` ON `msp_d_dl`.`Flight Number` = `ord_a_dl`.`Flight Number` 
WHERE `ord_a_dl`.`Date (MM/DD/YYYY)` = '7/1/2021'
GROUP BY `ord_a_dl`.`Flight Number`
ORDER BY `ord_a_dl`.`Date (MM/DD/YYYY)` ASC, `Scheduled Arrival Time`+0 ASC
LIMIT 5) AS `R1`


WHERE  STR_TO_DATE(`R1`.`Scheduled Arrival Time`, '%H:%i') <  STR_TO_DATE(`R2`.`Scheduled departure time`, '%H:%i')
ORDER BY `Final arrival time` ASC;
