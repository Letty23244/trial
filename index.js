document.addEventListener("DOMContentLoaded", () => {
    let books = JSON.parse(localStorage.getItem("newBooksModel")) || [];
    const bookList = document.getElementById("bookList");

    // Function to render the list of books
    function renderBooks() {
        bookList.innerHTML = ""; // Clear the current book list

        // Loop through each book and display it
        for (let i = 0; i < books.length; i++) {
            const book = books[i];
            const bookDiv = document.createElement("div");
            bookDiv.classList.add("col-md-3", "book-card");
            
            // Simple structure for each book card
            bookDiv.innerHTML = `
                <h5>${book.title}</h5>
                <p>${book.author}</p>
                <p>Status: ${book.status}</p>
            `;
            
            // Append the book card to the book list
            bookList.appendChild(bookDiv);
        }
    }

    // Call the renderBooks function to display the books
    renderBooks();
});
function saveBooks() {
    localStorage.setItem("books", JSON.stringify(books));
    renderBooks();
}

bookForm.addEventListener("submit", (e) => {
    e.preventDefault();
    const title = document.getElementById("title").value;
    const author = document.getElementById("author").value;
    const genre = document.getElementById("genre").value;
    const status = document.getElementById("status").value;

    books.push({ title, author, genre, status, favorite: false });
    saveBooks();
});

function editBook(index) {
    const book = books[index];
    document.getElementById("title").value = book.title;
    document.getElementById("author").value = book.author;
    document.getElementById("genre").value = book.genre;
    document.getElementById("status").value = book.status;
    
    books.splice(index, 1);
}