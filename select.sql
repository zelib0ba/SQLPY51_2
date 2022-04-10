/*
1. название и год выхода альбомов, вышедших в 2018 году;
2. название и продолжительность самого длительного трека;
3. название треков, продолжительность которых не менее 3,5 минуты;
4. названия сборников, вышедших в период с 2018 по 2020 год включительно;
5. исполнители, чье имя состоит из 1 слова;
6. название треков, которые содержат слово "мой"/"my".
*/

select album_name, release_year from album where release_year = 2018;

select track_name, duration from track order by duration  desc limit 1;

select track_name, duration from track where duration <= (60 * 3.5) ;

select mcollection_name  from mcollection where mcollection_year between 2018 and 2020;

select artist_name from artist where artist_name not like '%% %%';

select track_name from track where track_name like '%%Мой%%';
