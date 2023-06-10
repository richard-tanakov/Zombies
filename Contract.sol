pragma solidity >=0.4.19;

contract ZombieFactore {
    event NewZombie(uint zombieId, string name, uint dna); //Создание события
    uint dnaDigins = 16;
    // задали длину днк Зомби

    uint dnaModulus = 10 ** dnaDigins;
    // Проверка что днк равна 16 числам.
}
   struct Zombie {
      string name;
      uint dna;
      // создается структура зомби
   }
    Zombie[] public zombies; 
    // Создание массива

   function _createZomie (string _name, uint _dna) private{
    // Функция для производства Зомби (Она закрытая)
    uint id = zombies.push(Zombie(_name, _dna)) -1;
    enit NewZombie(id,_name,_dna);
   }
   function _generateRandomDna(string _str) private view returns (uint){
    // Функция для создания рандомных значений ДНК
     uint rand =  uint(keccak256(_str)); //При помощи кеширования создаём рандомные 16 цифр
        return rand % dnaModulus;
   }
     function createRandomZombie(string _name) public {
        uuint id = zombies.push(Zombie(_name, _dna)) - 1;
        NewZombie(id, _name, _dna); 
        // Всю башку сломал! Нужно быть аккуратней с пробелами.если пробел стоит там где его не должно быть будет ошибка. 
    }

}