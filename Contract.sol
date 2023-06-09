pragma solidity ^0.4.19; // Объявление версии (Без неё не создаш контракта)


contract ZombieFactory { // Создание контракта, зомби

    uint dnaDigits = 16;
    uint dnaModulus = 10 ** dnaDigits;

    struct Zombie { // Сам зомби
        string name;
        uint dna;
    }

    Zombie[] public zombies;

    function createZombie(string _name, uint _dna) {
        zombies.push(Zombie(_name, _dna)); // добавление новых.
    }

}

}
