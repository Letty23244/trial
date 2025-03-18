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
