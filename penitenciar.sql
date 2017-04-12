create or replace package penitenciar is
    type progrram is record
     (detinut_id number(10),
      vizitator_id number(10),
      cabina_id number(10),
      natura_vizitei varchar2(200),
      pachet number(10),
      data_p timestamp(6)
     );
     
    function setProgramare (p_program progrram) return varchar2;
end penitenciar; 
  

create or replace package body penitenciar is

   
   function exista( id_in in detinuti.id_detinut%type ) return boolean is
       res boolean := false;
       begin
       for c1 in ( select 1 from detinuti where id_detinut = id_in and rownum = 1 ) loop
             res := true;
             exit; -- only care about one record, so exit.
      end loop;
     return res ;
  end exista;
   function setProgramare (p_program progrram) return varchar2 is 
      v_mesaj varchar2(400);
      v_id_detinut number(10);
      v_id_cabina number(10);
      v_capacitate number(10);
      v_grad_utilizare number(10);
      type cabina is table of cabine%rowtype;
      lista_cabine cabina;
   begin
        if (p_program.detinut_id is null)
            then return 'Introduceti id-ul detinutului!';
        end if;
        
        IF (exista(p_program.detinut_id) ) THEN
            v_mesaj := 'Exista!';
        ELSE
            return 'Detinutiul nu exista!';
        END IF;
        
        if (p_program.natura_vizitei is null)
            then return 'Introduceti natura vizitei!';
        end if;
        if (p_program.vizitator_id is null)
            then return 'Introduceti id-ul vizitatorului!';
        end if;
        if (p_program.pachet is null)
            then return 'Introduceti o valoare pentru pachet!';
        end if;
        if (p_program.data_p is null)
            then return 'Introduceti data programarii!';
        end if;
        select id_cabina, capacitate into v_id_cabina, v_capacitate from cabine where id_cabina = p_program.cabina_id;
        select count(*) into v_grad_utilizare from programari where id_cabina = p_program.cabina_id and data_programare = p_program.data_p;
        if(v_grad_utilizare+1 > v_capacitate)
                then v_mesaj := 'Cabina este plina! Va recomandam una dintre cabinele urmatoare: ';
                select * bulk collect into lista_cabine from cabine;
                for i in 1..lista_cabine.count loop
                      select id_cabina, capacitate into v_id_cabina, v_capacitate from cabine where id_cabina = lista_cabine(i).id_cabina;
                      select count(*) into v_grad_utilizare from programari where id_cabina = p_program.cabina_id and data_programare = p_program.data_p;
                      if(v_grad_utilizare+1 <= v_capacitate)
                          then v_mesaj := v_mesaj|| v_id_cabina|| ', ';
                      end if;    
                end loop;
                v_mesaj := substr(v_mesaj,1,  instr(v_mesaj, ',', -1)-1 )||'.';
                else
                  insert into programari (id_detinut, id_vizitator, data_programare, id_cabina, pachet, natura_vizitei) values
                   (p_program.detinut_id, p_program.vizitator_id, p_program.data_p, p_program.cabina_id, p_program.pachet, p_program.natura_vizitei);
                   v_mesaj := 'Programarea a fost adaugata.';
        end if;
        
        
        return v_mesaj;
   end setProgramare;
end penitenciar;  

