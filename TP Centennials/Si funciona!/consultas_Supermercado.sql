
use Supermercado;

# 2. Redacte una consulta que seleccione las sucursales de un barrio determinado.	
select * from sucursales 
	where barrio = 'Almagro';

# 3. Redacte una consulta que seleccione todas las ventas del mes de octubre.
select * from ventas 
	where month(fecha)='10'; 


#4. Redacte una consulta que seleccione todas las ventas que sean mayores a la venta promedio, ordenadas de forma descendente.
select * from ventas 
	where monto_total > (select avg(monto_total) from ventas) 
		order by monto_total desc ;

#5. Redacte una consulta que muestre las ventas de las sucursales de un barrio determinado, correspondientes al mes de octubre	
select * from ventas v 
	inner join Sucursales s on v.codigo_sucursal = s.codigo_sucursal 
		where s.barrio = 'Almagro' 
			and v.fecha >='2019/10/01' and v.fecha<='2019/10/31';
 
 #6. Redacte una consulta que cuente cuantas sucursales tuvieron ingresos mayores a un monto determinado durante el mes de Septiembre.
 select count(*) from sucursales s 
	inner join ventas v on s.codigo_sucursal = v.codigo_sucursal 
		where v.monto_total > 1000 and month(v.fecha)='09';

#7. Redacte una consulta que obtenga los ingresos de todas las sucursales durante la primera quincena de noviembre, y las ordene de menor a mayor
select s.codigo_sucursal, v.monto_total from ventas v 
	inner join sucursales s on v.codigo_sucursal = s.codigo_sucursal 
		where v.fecha >= '2019/11/01' and v.fecha <= '2019/11/15' order by v.monto_total asc;
