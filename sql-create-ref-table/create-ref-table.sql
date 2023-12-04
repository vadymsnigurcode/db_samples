drop table if exists pc;
drop table if exists network;

-- create ip4 table 
create table network (
 network_id int generated always as identity,
 primary key(network_id),
 ip4 varchar(255),
 ip6 varchar(255)
);

-- create computer table
create table pc (
 id int generated always as identity,
 primary key(id),
 net_id int,
 name varchar(255),
 constraint fk_network
  foreign key(net_id)
   references network(network_id)
);

insert into network(ip4, ip6) 
 values('1.1.1.1',''),
 ('2.2.2.2',''),
 ('3.3.3.3',''),
 ('4.4.4.4',''),
 ('5.5.5.5','');

insert into pc(net_id,"name")
 values(1,'PC1');

do $$
 begin
  for variable in 1..10 loop
	  
	  insert into network(ip4, ip6) 
 		values(CONCAT(variable,'.',variable,'.',variable,'.',variable),'');
   raise notice 'Iteration = %', variable;
  end loop;
 end; $$
