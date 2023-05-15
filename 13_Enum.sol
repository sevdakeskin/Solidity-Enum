// SPDX-License-Identifier: MIT
    pragma solidity ^0.8.17;

    contract EnumData{

        /*
            enum sabit bir veri kumesidir. 1 kez tanimkandiktan sonra güncellenemezler.
            enum olrak belirledigimiz veri tipleri degistirilemezler
            birden fazla elemean barindirirlir 
            sabitler listesi olarakta gecer
            enum olrak degisken tanimlamak gas acisnda oldukca iyi
        */

       enum  Weekdays { Monday, tuesday, wednesday, thursday, friday, saturday,sunday}

        Weekdays public day;

        function setDay(uint _day) public {//değişiklik yaparken yani set edilirken pure veya view kullanılmaz.
            day = Weekdays(_day);
        }   

        function getDay() public view returns(Weekdays){
a
            return day;
        }

        function getDayName()public view returns(string memory) {

            if(day == Weekdays.Monday){

                return "monday";
            }
            if(day == Weekdays.tuesday){

                return "tuesday";
            }
        }


    }