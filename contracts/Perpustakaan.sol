// SPDX-License-Identifier: MIT

pragma solidity 0.8.13;

contract Perpustakaan{
    adress public admin;

    struct book {
        string title;
        uint year;
        string author;
        string isbn;
    }

    mapping(string => Book) public books;
    string[] public isbnList;

    constructor() {
         admin = msg.sender;
    }
       
    modifier onlyAdmin() {
        require(msg.sender == admin, "Hanya admin yang dapat mengakses fungsi ini");
        _;


}

// fungsi menambah buku{
    function addBook(
    string memory _PsikologiKomunikasi,
    string _2007,
    string memory _JalaluddinRakhmat,
    string memory _author

    ) public onlyAdmin 
            require (structbook [_isbn]) year0 Buku dengan ISBN ini tidak ditemukan;
            books[_isbn] books ;_title _year_author_isbn;
        }

                Bookmemory bukuBaru = Buku(_title, _year, _author, _isbn); 
                
// fungsi mengupdate buku berdasarkan ISBN {
    function updateBook (
    string memory _9795141457,
    string memory _PsikologiKomunikasi,
    uint memory _2007,
    string memory _JalaluddinRakhmat
    ) public onlyAdmin {
          require (structbook[_isbn].isbn).length != 0; "Buku dengan ISBN ini tidak ditemukan";
        books[_isbn] = Book(_title, _year, _author, _isbn); {

            Book memory updateBuku = Buku; {}
                PsikologiKomunikasi; _PsikologiKomunikasi;
                JalaluddinRakhmat; _JalaluddinRakhmat;
                year; _year;
                uthor; _author;
                isbn; _isbn;
        }

    }
      
    

//Fungsi menghapus buku berdasarkan ISBN {
function removeBook public onlyAdmin
        require (structbook [_isbn].isbn).length != 0, "Buku dengan ISBN ini tidak ditemukan";
        delete books[_isbn]; 

   

    
        for (uint i = 0; i < isbnList.length; i++) {
            if (uint256(bytes(isbnList[i])) == uint256(bytes(_isbn))) {
                isbnList[i] = isbnList[isbnList.length - 1];
                isbnList.pop();
                break;
        }
    }

//Fungsi mendapatkan data buku berdasarkan ISBN {
    function getBookByISBN;
    (string memory _isbn) public view returns (string memory, uint, string memory, string memory) {
        require (struct(books[_isbn].isbn).length != 0, "Buku dengan ISBN ini tidak ditemukan");
        Book memory book = books[_isbn];
        return (book.PsikologiKomunikasi, book.2007, book.JalaluddinRakhmat, book.9795141457);
    }


// hardhat.config.js
module.exports = {
  solidity: "0.8.0",
  networks: {
    hardhat: {},
  },
};

// scripts/test.js
async function main() {
  const [deployer] = await ethers.getSigners();

  const Bookstore = await ethers.getContractFactory("Bookstore");
  const bookstore = await Bookstore.deploy();

  await bookstore.deployed();
  console.log("Bookstore deployed to:", bookstore.address);

  // Test addBook function (happy path)
  await bookstore.addBook(123456, "Book 1", 100);
  console.log("Book added successfully");

  // Test updateBook function (happy path)
  await bookstore.updateBook(123456, "Updated Book 1", 150);
  console.log("Book updated successfully");

  // Test removeBook function (happy path)
  await bookstore.removeBook(123456);
  console.log("Book removed successfully");

  // Test addBook function (sad path)
  try {
    await bookstore.addBook(123456, "Book 2", 200);
  } catch (error) {
    console.error("Error adding book:", error.message);
  }

  // Test updateBook function (sad path)
  try {
    await bookstore.updateBook(789012, "Book 3", 300);
  } catch (error) {
    console.error("Error updating book:", error.message);
  }

  // Test removeBook function (sad path)
  try {
    await bookstore.removeBook(789012);
  } catch (error) {
    console.error("Error removing book:", error.message);
  }
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });






    


   

  


    





    