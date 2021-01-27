
-- ------------------------------------------------------------------------------------
-- Asignación de itinerarios a las nuevas BM 
-- Actualización de los itinearios ya leidos en ciclo Enero 21 para la BM 
---------------------------------------------------------------------------------------
-- BM (444)

with grupos_cerrados_leidos_enero_444 as (
	select distinct(i.*) from pln_group g 
	inner join pln_group_cycle gc on gc.id_group = g.id_group and year=2021 and year_cycle =01
	inner join cmc_itinerary_ord i on i.code_group =g.code and i.end_reference is null
	where g.d_group_status_type='4' and gc.d_group_cycle_status ='3' -- Grupo Cerrado y Ciclo Enero leido
	and i.id_default_ext_enterprise =( select id_reading_center from cmc_reading_center where organizational_lvl = '442')
)UPDATE cmc_itinerary_ord set 
 id_default_ext_enterprise = ( select id_reading_center from cmc_reading_center where organizational_lvl = '444'),
	id_liquidation_area= (select   a.id_liquidation_area  from cmc_reading_center r 
	inner join cmc_parameter p on r.organizational_lvl = p.organizational_lvl
	inner join organizational_lvl o on o.organizational_lvl = r.organizational_lvl 
	inner join cmc_liquidation_area a on a.code_liquidation_area = p.parameter_value -- Obtenemos los id_liquidation_area
	where p.parameter = 'LIQUIDATION_AREA_FOR_EXTERNAL_ENTERPRISE'
	and code_type_ext_multiserv = 2 and r.organizational_lvl in ('444')),
 updater_process='CMC_MANUAL', 
 last_update=now() 
 where id_itinerary_ord in (select id_itinerary_ord from grupos_cerrados_leidos_enero_444);
 

-- BM (445)

with grupos_cerrados_leidos_enero_445 as (
	select distinct(i.*) from pln_group g 
	inner join pln_group_cycle gc on gc.id_group = g.id_group and year=2021 and year_cycle =01
	inner join cmc_itinerary_ord i on i.code_group =g.code and i.end_reference is null
	where g.d_group_status_type='4' and gc.d_group_cycle_status ='3' -- Grupo Cerrado y Ciclo Enero leido
	and i.id_default_ext_enterprise =( select id_reading_center from cmc_reading_center where organizational_lvl = '438')
)UPDATE cmc_itinerary_ord set 
 id_default_ext_enterprise = ( select id_reading_center from cmc_reading_center where organizational_lvl = '445'),
	id_liquidation_area= (select   a.id_liquidation_area  from cmc_reading_center r 
	inner join cmc_parameter p on r.organizational_lvl = p.organizational_lvl
	inner join organizational_lvl o on o.organizational_lvl = r.organizational_lvl 
	inner join cmc_liquidation_area a on a.code_liquidation_area = p.parameter_value -- Obtenemos los id_liquidation_area
	where p.parameter = 'LIQUIDATION_AREA_FOR_EXTERNAL_ENTERPRISE'
	and code_type_ext_multiserv = 2 and r.organizational_lvl in ('445')),
 updater_process='CMC_MANUAL', 
 last_update=now() 
 where id_itinerary_ord in (select id_itinerary_ord from grupos_cerrados_leidos_enero_445);

-- BM (446)
with grupos_cerrados_leidos_enero_446 as (
	select distinct(i.*) from pln_group g 
	inner join pln_group_cycle gc on gc.id_group = g.id_group and year=2021 and year_cycle =01
	inner join cmc_itinerary_ord i on i.code_group =g.code and i.end_reference is null
	where g.d_group_status_type='4' and gc.d_group_cycle_status ='3' -- Grupo Cerrado y Ciclo Enero leido
	and i.id_default_ext_enterprise =( select id_reading_center from cmc_reading_center where organizational_lvl = '441')
)UPDATE cmc_itinerary_ord set 
 id_default_ext_enterprise = ( select id_reading_center from cmc_reading_center where organizational_lvl = '446'),
	id_liquidation_area= (select   a.id_liquidation_area  from cmc_reading_center r 
	inner join cmc_parameter p on r.organizational_lvl = p.organizational_lvl
	inner join organizational_lvl o on o.organizational_lvl = r.organizational_lvl 
	inner join cmc_liquidation_area a on a.code_liquidation_area = p.parameter_value -- Obtenemos los id_liquidation_area
	where p.parameter = 'LIQUIDATION_AREA_FOR_EXTERNAL_ENTERPRISE'
	and code_type_ext_multiserv = 2 and r.organizational_lvl in ('446')),
 updater_process='CMC_MANUAL', 
 last_update=now() 
 where id_itinerary_ord in (select id_itinerary_ord from grupos_cerrados_leidos_enero_446);
 
 
 