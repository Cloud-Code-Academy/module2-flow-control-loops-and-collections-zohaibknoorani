


// String helloWorld = 'Hello World!;';
// // Use a for loop to append 'Hello World!;' to the result string three times
// for(Integer i = 1; i <= 2; i++){
//     helloWorld = helloWorld + ' Hello World!;' ;
// }

// System.debug(helloWorld); // Replace null with the variable you used to store the result




// List<String> nolanFilms = new List<String>{'Tenet','Dunkirk','Intersteller','Man of Steel','The Dark Knight Rises','Inception'};

// System.debug(nolanFilms);

// For (Integer i = 0; i < nolanFilms.size(); i++){
//     String film = nolanFilms[i];
//     System.debug(film);
//     if (film.contains('t')){
//         System.debug('This one is my top 10');
//         break;
//     }
//     System.debug('I love this film');

// }




















// Map<Id, Account> accountMap = new Map<Id, Account>();

// List<Account> accounts = [SELECT Id, Name FROM Account LIMIT 10];

// System.debug(accounts[1]);
// System.debug(accounts[1].Id);
// System.debug(accounts[1].Name);

// for (Account acc: accounts){
//     accountMap.put(acc.Id, acc);
// }

// System.debug(accountMap.get(accounts[1].Id));










// Map<String,Integer> dayOfWeekMap = new Map<String,Integer>();

// dayOfWeekMap.put('Mon',1);
// dayOfWeekMap.put('Tue',2);
// dayOfWeekMap.put('Wed',3);
// dayOfWeekMap.put('Thu',4);
// dayOfWeekMap.put('Fri',5);
// dayOfWeekMap.put('Sat',6);
// dayOfWeekMap.put('Sun',7);


// System.debug(dayOfWeekMap);
// System.debug('Map Size: ' + dayOfWeekMap.size());

// String dayOfWeekString = 'Mon';
// Integer dayOfWeekNumber = dayOfWeekMap.get(dayOfWeekString);

// System.debug('Day of the week number: ' + dayOfWeekNumber);

// for (String day : dayOfWeekMap.keySet()){
//     System.debug('Day of the week: ' + day);
//     System.debug('Day of the week number: ' + dayOfWeekMap.get(day));
// }


























// Set<String> fruits = new Set<String>();
// fruits.add('Apple');
// fruits.add('Orange');
// fruits.add('Lemon');
// fruits.add('Lemon');
// fruits.add('Banana');

// System.debug(fruits);
// System.debug(fruits.size());

// for (String fruit: fruits){
//     System.debug(fruit);
// }

// Set<String> thingsToEat = new Set<String>{'Rice','Chicken'};
// System.debug(thingsToEat);
// thingsToEat.addAll(fruits);
// Boolean hasApple = thingsToEat.contains('Apple');
// System.debug('Does it have Apples?' + hasApple);
// thingsToEat.clear();
// System.debug(thingsToEat.isEmpty() + ' ' + 'size: ' + thingsToEat.size() );
