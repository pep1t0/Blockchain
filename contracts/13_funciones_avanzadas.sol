// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Food {

    struct dinnerPlate {
        string name;
        string ingredients;
    }

    dinnerPlate [] menu;

    function newMenu(string memory _name, string memory _ingredients) internal {
        menu.push(dinnerPlate(_name, _ingredients));
    } 
}

contract Hamburguer is Food {
    
    constructor()  {
       newMenu("Hamburguer", "Hamburguer, bread, lettuce, tomato, onion, pickles, ketchup, mustard");
       newMenu("Cheeseburguer", "Hamburguer, bread, lettuce, tomato, onion, pickles, ketchup, mustard, cheese");
       newMenu("Fishburguer", "Hamburguer, bread, lettuce, tomato, onion, pickles, ketchup, mustard, fish"); 
   }
}