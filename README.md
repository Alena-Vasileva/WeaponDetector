Crypto Rating
===
В данном репозитории находится решение кейса от Zerion для финала хакатона Definition 19-20 февраля 2022, разработанное командой Comet

Содержание
---
+ [**Инструкция по установке**](#инструкция-по-установке)  
+ [**Проблема**](#проблема)  
+ [**Решение**](#решение)   
+ [**User Stories**](#user-stories)  
  + [Издатель](#издатель)  
  + [Наблюдатель](#наблюдатель)  
  + [Компания](#компания)  
+ [**Use Cases**](#use-cases)  
  + [Категории юзкейсов](#категории-юзкейсов)  
  + [Запуск системы](#1-запуск-системы)  
  + [Регистрация](#2-регистрация)  
  + [Авторизация](#3-авторизация)  
+ [**Архитектура**](#архитектура)  
  + [Фронтенд](#фронтенд)
  + [Бекенд](#бэкенд)
  + [Что мы сделали за хакатон](#что-мы-сделали-за-хакатон)
+ [**Демонстрация решения**](#демонстрация-решения)
+ [**Направления дальнейшей разработки**](#направления-дальнейшей-разработки)  

Инструкция по установке
---
### С использование Docker:
Посмотреть рабочий прототип сайта можно увидеть по ссылке. Однако, в нем нет логики. Чтобы протестировать логику необходимо выполнить следующие действия:

Установить Docker на свой компьютер. Его можно скачать здесь;
Склонировать этот репозиторий любым из способов;
Перейти в директорию с репозиторием и запустить команду docker-compose up или docker-compose up --build. 

Проблема
---
На хакатоне команда выбрала кейс от компании Zerion и работала над новым способом социального взаимодействия в Web3.0. Мы выделили проблему использования DeFi небольшим числом потенциальных пользователей, которые относятся к числу инноваторов. Так что мы стремились расширить базу пользователей путём привлечения ранних последователей в DeFi. Их отличительной чертой является то, что им нужно одобрение экспертов, чтобы начать пользоваться новой технологией. 

Решение
---
С помощью интеграции Zerion API мы разработали сервис анализа транзакций пользователя и составления его личного рейтинга, которым можно поделиться в социальных сетях. Такии образом представители ранних последователей, которые следят за профилями инноваторов, захотят повторить успех последних и начнут пользоваться DeFi.

User Stories 
---
### Издатель 
Стремится стать криптовалютным инфлюенсером, чтобы получать деньги за рекламные интеграции.

### Наблюдатель
Много слышали про крипту, но до этого боялись/не хотели разбираться, им нужен толчок, чтобы начать пользоваться новейшими технологиями

### Компания
1) Вкладываются в интеграции с инфлюенсерами, чтобы пропиарить свой продукт
2) Спонсируют масштабирование рынка, чтобы повысить трафик капиталов


Use Cases 
---
### Категории юзкейсов 
**Аккаунт:** регистрация и авторизация  

**Менеджер подписки:** активация пробного периода, подключение подписки, продление подписки 

**Менеджер полей:** просмотр поля, создание поля, редактирование поля, удаление поля 

**Выбор оптимальных культур** 

**Сроки посадки и сбора** 

**Полив и удобрения**

### **(1)** Запуск системы
**Название:** Запуск системы 

**Описание:** Пользователь входит в систему, чтобы получить доступ к ее функционалу. 

**Предусловия:** Приложение установлено. 

**Результат:** Система готова к использованию. 

**Триггер:** Пользователь открывает приложение. 

**Успешный сценарий:**

1. Система выводит приветственное окно и загружается. 

2. Если на устройстве уже была выполнена авторизация, то система готова к использованию и процесс завершается. 

3. Система выводит форму входа. Далее возможны сценарии “регистрация” и “авторизация”. 

**Альтернативные сценарии:** - 

### **(2)** Регистрация 
**Название:** Регистрация 

**Описание:** Пользователь создаёт аккаунт в системе. 

**Предусловия:** Система должна быть подключена к сети Интернет. 

**Результат:** Пользователь зарегистрирован. 

**Триггер:** - 

**Успешный сценарий:** 

1. Пользователь нажимает на кнопку “регистрация”. 

2. Система выводит форму регистрации. 

3. Пользователь вводит почту (она же логин) и нажимает кнопку “подтвердить почту”. 

4. Система высылает письмо с подтверждением на почту. 

5. Пользователь подтверждает почту. 

6. Система получает подтверждение и активирует поля с паролем. 

7. Пользователь вводит пароль и повтор пароля и нажимает “зарегистрироваться”. 

8. Система создаёт аккаунт пользователя и даёт разрешение на вход и выводит сообщение об успешной регистрации. 

**Альтернативные сценарии:**  

**(3)** *Если уже существует аккаунт с такой почтой, то система выводит сообщение об  этом.* 

**(7.1)** *Если пароли не совпадают или не соответствуют требованиям надёжности, то система выводит сообщение об ошибке.* 

### **(3)** Авторизация 
**Название:** Авторизация 

**Описание:** Пользователь авторизуется в системе. 

**Предусловия:** Система должна быть подключена к сети Интернет. 

**Результат:** Пользователь авторизован. 

**Триггер:** Система не обнаружила выполненных авторизаций на устройстве. 

**Успешный сценарий:** 

1. Пользователь вводит логин и пароль и наживает на кнопку “вход”. 

2. Система проверяет логин и пароль. 

3. Система даёт разрешение на вход и выводит сообщение об успешной авторизации. 

**Альтернативные сценарии:**  

**(2.1)** *Если одно из полей не заполнено, то система выводит сообщение об ошибке в незаполненном поле.* 

**(3.1)** *Если логин не найден, то система выводит сообщение об ошибке в логине.* 

**(3.2)** *Если пароль не верен, то система выводит сообщение об ошибке в пароле.*

Архитектура
---
В общем про архитектуру

### Фронтенд
Клиентская часть приложения будет разработана с использованием технологии Xamarin  Forms, которая была выбрана благодаря её кроссплатформенности. При проектировании будет применяться шаблон MVVM, так как он соответствует современным стандартам и рекомендуется [Microsoft](https://docs.microsoft.com/ru-ru/xamarin/xamarin-forms/enterprise-application-patterns/mvvm).

![.](https://github.com/Alena-Vasileva/FarmerCyberAssistant/blob/main/img/Image_2.jpg)

### Бэкенд
1. Управляющий сервер задает параметры работы других серверов и перезапускает их в случае сбоя.
2. Загрузчик данных обновляет базу с данными для обучения, а также реализует публичные методы для получения текущих погодных данных.
3. Модуль ИИ обучает нейросеть, а также реализует публичные методы для получения рекомендаций.
4. Обработчик запросов обрабатывает запросы пользователей приложения.

### Что мы сделали за хакатон
1. Пользовательская база данных 
2. База данных для обучения 

Демонстрация решения
---


Направления дальнейшей разработки
---
Для создания инфраструктуры мы будем использовать Docker. 

На данном этапе планируется 5 контейнеров в соответствии с архитектурой.
