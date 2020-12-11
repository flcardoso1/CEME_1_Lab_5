i=0
delta_i=2
dy=-0.49
f = openfile ("resultados_g_0_5.dat", "w")
write (f, "I(A),Fluxo\n")
for i= 0,20, delta_i do
	mi_modifycircprop("bobina",1,i)
	mi_analyze()
	mi_loadsolution()
	Corrente_bobina,Tensao_bobina,Fluxo_Concatenado_bobina = mo_getcircuitproperties("bobina")
	write (f, Corrente_bobina,",",Fluxo_Concatenado_bobina,"\n")
end
closefile(f)

mi_selectrectangle(4.82,10.23,13.022,8.0001,4)
mi_movetranslate(0,dy,4)