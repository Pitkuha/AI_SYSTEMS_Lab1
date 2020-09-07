% Мужчины в семье
man(dan_pitkovskiy).
man(dmitriy_pitkovskiy).
man(leonid_plotkin).
man(itay_plotkin).
man(yakov_plotkin).
man(lev_pitkovskiy).
man(naum_plotkin).
man(moisey_pitkovskiy).
man(mihail_pitkovskiy).
man(arkadiy_zharkov).
man(eugene_zharkov).
% Женщины в семье
woman(galina_pitkovskaya).
woman(eugenya_plotkina).
woman(irina_plotkina).
woman(margarita_pitkovskaya).
woman(shelly_plotkin).
woman(galina_plotkina).
woman(anna_zharkova).
woman(lyubov_zharkova).
woman(miri_zharkova).
woman(irena_zharkova).
woman(elena_pitkovskaya).
% Супруги
spouses(dmitriy_pitkovskiy,galina_pitkovskaya).
spouses(leonid_plotkin,irina_plotkina).
spouses(yakov_plotkin,eugenya_plotkina).
spouses(lev_pitkovskiy,margarita_pitkovskaya).
spouses(naum_plotkin,galina_plotkina).
spouses(arkadiy_zharkov,anna_zharkova).
spouses(eugene_zharkov,lyubov_zharkova).
spouses(moisey_pitkovskiy,elena_pitkovskaya).
% Родители
parent(dmitriy_pitkovskiy,dan_pitkovskiy).
parent(galina_pitkovskaya,dan_pitkovskiy).
parent(lev_pitkovskiy,dmitriy_pitkovskiy).
parent(margarita_pitkovskaya,dmitriy_pitkovskiy).
parent(yakov_plotkin,galina_pitkovskaya).
parent(eugenya_plotkina,galina_pitkovskaya).
parent(yakov_plotkin,leonid_plotkin).
parent(eugenya_plotkina,leonid_plotkin).
parent(leonid_plotkin,itay_plotkin).
parent(irina_plotkina,itay_plotkin).
parent(leonid_plotkin,shelly_plotkin).
parent(irina_plotkina,shelly_plotkin).
parent(naum_plotkin,yakov_plotkin).
parent(galina_plotkina,yakov_plotkin).
parent(lev_pitkovskiy,mihail_pitkovskiy).
parent(margarita_pitkovskaya,mihail_pitkovskiy).
parent(arkadiy_zharkov,eugenya_plotkina).
parent(anna_zharkova,eugenya_plotkina).
parent(arkadiy_zharkov,lyubov_zharkova).
parent(anna_zharkova,lyubov_zharkova).
parent(eugene_zharkov,miri_zharkova).
parent(lyubov_zharkova,miri_zharkova).
parent(eugene_zharkov,irena_zharkova).
parent(lyubov_zharkova,irena_zharkova).
parent(moisey_pitkovskiy,lev_pitkovskiy).
parent(elena_pitkovskaya,lev_pitkovskiy).

% Брат / сестра
sibling(X,Y):-parent(Z,X),parent(Z,Y),X\=Y.
% Папа
father(X,Y):-man(X),parent(X,Y).
% Мама
mother(X,Y):-woman(X),parent(X,Y).
% Дедушка
grandfather(X,Y):-man(X),parent(Z,Y),parent(X,Z).
% Бабушка
grandmother(X,Y):-woman(X),parent(Z,Y),parent(X,Z).\
% Сын
son(X,Y):-man(X),parent(Y,X).
% Дочь
doughter(X,Y):-woman(X),parent(Y,X).
% Дядя
uncle(X,Y):-man(X),sibling(X,Z),parent(Z,Y).
% Тётя
aunt(X,Y):-woman(X),sibling(X,Z),parent(Z,Y).
% Кузэн / Кузина
cousine(X,Y):-uncle(Z,Y),parent(Z,X).
% Двоюродная бабушка
greataunt(X,Y):-woman(X),sibling(X,Z),(grandfather(Z,Y);grandmother(Z,Y)).
% Двоюродный дедушка
greatuncle(X,Y):-woman(X),sibling(X,Z),(grandfather(Z,Y);grandmother(Z,Y)).
