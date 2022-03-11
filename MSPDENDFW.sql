-----------------




SELECT  `R1`.`Scheduled departure time` AS `First start time`, `R1`.`Scheduled arrival time` AS `First arrival time`, 'DEN' AS `Tranfer airport`, `R2`.`Scheduled departure time` AS `Second depature time`,`R2`.`Scheduled arrival Time` AS `Final arrival time`, TIMEDIFF(STR_TO_DATE(`R2`.`Scheduled arrival Time`, '%H:%i'), STR_TO_DATE(`R1`.`Scheduled departure time`, '%H:%i')) AS `Duration`, 'MSP:DEN:DFW'
FROM (
    # this is from den to DFW
SELECT DISTINCT `dfw_a_aa`.`Flight Number`, `dfw_a_aa`.`Scheduled Arrival Time`, `den_d_aa`.`Scheduled departure time`, TIMEDIFF( `dfw_a_aa`.`Scheduled Arrival Time`, `den_d_aa`.`Scheduled departure time`) AS `duration`
FROM `dfw_a_aa` 
INNER JOIN `den_d_aa` ON `den_d_aa`.`Flight Number` = `dfw_a_aa`.`Flight Number`
WHERE `dfw_a_aa`.`Date (MM/DD/YYYY)` = '07/01/2021'
GROUP BY `dfw_a_aa`.`Flight Number`
ORDER BY `dfw_a_aa`.`Date (MM/DD/YYYY)` ASC, `Scheduled Arrival Time`+0 ASC
LIMIT 7) AS `R2`,

(	# FROM MSP to ORD
    SELECT DISTINCT `den_a_dl`.`Flight Number`, `den_a_dl`.`Scheduled Arrival Time`, `msp_d_dl`.`Scheduled departure time`, TIMEDIFF( `den_a_dl`.`Scheduled Arrival Time`, `msp_d_dl`.`Scheduled departure time`) AS `duration`
FROM `den_a_dl`
INNER JOIN `msp_d_dl` ON `msp_d_dl`.`Flight Number` = `den_a_dl`.`Flight Number` 
WHERE `den_a_dl`.`Date (MM/DD/YYYY)` = '07/01/2021'
GROUP BY `den_a_dl`.`Flight Number`
ORDER BY `den_a_dl`.`Date (MM/DD/YYYY)` ASC, `Scheduled Arrival Time`+0 ASC
LIMIT 5) AS `R1`


WHERE  STR_TO_DATE(`R1`.`Scheduled Arrival Time`, '%H:%i') <  STR_TO_DATE(`R2`.`Scheduled departure time`, '%H:%i')
ORDER BY `Final arrival time` ASC;
