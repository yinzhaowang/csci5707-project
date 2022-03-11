# this is from den to DFW
SELECT `dfw_a_aa`.`Date (MM/DD/YYYY)` ,`dfw_a_aa`.`Flight Number`, `dfw_a_aa`.`Scheduled Arrival Time`, `den_d_aa`.`Scheduled departure time`,
`dfw_a_aa`.`Origin Airport` AS `Origin`, 'DFW' AS `Destination`, 
TIMEDIFF( STR_TO_DATE(`dfw_a_aa`.`Scheduled Arrival Time`, '%H:%i'), STR_TO_DATE( `den_d_aa`.`Scheduled departure time`, '%H:%i%' )) AS `duration`

FROM `dfw_a_aa` 
INNER JOIN `den_d_aa` ON `den_d_aa`.`Flight Number` = `dfw_a_aa`.`Flight Number` AND `den_d_aa`.`Date (MM/DD/YYYY)` = `dfw_a_aa`.`Date (MM/DD/YYYY)`;
