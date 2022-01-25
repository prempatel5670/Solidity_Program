// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;


contract Structure{
    //creating the structure
    struct book{
        string book_name;
        string author_name;
        uint price;
    }

    //creating a object of structure
    book public book_data;

    function storeData() public returns(string memory,string memory,uint){
        book_data.book_name="ABCD";
        book_data.author_name="Mark";
        book_data.price=123;
        return (book_data.book_name,book_data.author_name,book_data.price);

    }

}
