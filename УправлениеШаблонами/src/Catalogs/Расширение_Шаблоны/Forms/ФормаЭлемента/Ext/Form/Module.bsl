﻿
#Область ОбработчикиСобытийФормы

&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	
	СвойстваОбъекта = УправлениеСвойствами.СвойстваОбъекта(Контрагент,Истина,Ложь);	
	РеквизитПараметр = Справочники.Расширение_Шаблоны.ДополнительныйРеквизитПараметр(); 
	
	Для каждого ДополнительныйРеквизит Из СвойстваОбъекта Цикл
		
		Если Не ДополнительныйРеквизит.ПометкаУдаления
			И ДополнительныйРеквизит.Виден
			И ДополнительныйРеквизит.Доступен
			И ДополнительныйРеквизит.Имя = РеквизитПараметр Тогда                                 
			
			НовыйПараметр 			= ТаблицаПараметров.Добавить();
			НовыйПараметр.Параметр 	= ДополнительныйРеквизит.Имя;
			НовыйПараметр.Ссылка 	= ДополнительныйРеквизит.Ссылка;
			
		КонецЕсли; 	
		
	КонецЦикла; 
	
КонецПроцедуры

#КонецОбласти

#Область ОбработчикиСобытийЭлементовШапкиФормы

&НаКлиенте
Процедура ТаблицаПараметровВыбор(Элемент, ВыбраннаяСтрока, Поле, СтандартнаяОбработка)
	
	Объект.ТекстШаблона = Объект.ТекстШаблона + СтрШаблон("[%1]",Элемент.ТекущиеДанные.Параметр);
	
КонецПроцедуры


#КонецОбласти


#Область ОбработчикиКомандФормы

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

#КонецОбласти



