[1mdiff --git a/index.html b/index.html[m
[1mindex 131860d..a4d3d1b 100644[m
[1m--- a/index.html[m
[1m+++ b/index.html[m
[36m@@ -20,7 +20,52 @@[m
     <li class="nav-item-2"> <a class="nav-link " data-bs-toggle="tab" href="#favourite">favourite</a></li>[m
     <li class="nav-item-3"> <a class="nav-link " data-bs-toggle="tab" href="#read">Read</a></li> [m
     <li class="nav-item-4"> <a class="nav-link " data-bs-toggle="tab" href="#unread">Unread</a></li></ul>[m
[32m+[m
[32m+[m[32m    <div class="tab-content mt-4" id="bookTabsContent">[m
[32m+[m[41m        [m
[32m+[m[32m        <div class="tab-pane fade show active" id="allBooks">[m
[32m+[m[32m            <p>All books will be displayed here.</p>[m
[32m+[m[32m        </div>[m
[32m+[m[41m        [m
[32m+[m[32m        <div class="tab-pane fade" id="favourite">[m
[32m+[m[32m            <p>Favourite books will be displayed here.</p>[m
[32m+[m[32m        </div>[m
[32m+[m
[32m+[m[32m        <div class="tab-pane fade" id="read">[m
[32m+[m[32m            <p>Read books will be displayed here.</p>[m
[32m+[m[32m        </div>[m
[32m+[m[41m        [m
[32m+[m[32m        <div class="tab-pane fade" id="unread">[m
[32m+[m[32m            <p>Unread books will be displayed here.</p>[m
[32m+[m[32m        </div>[m
[32m+[m[32m    </div>[m
[32m+[m
[32m+[m[32m      <!-- Book modal structure -->[m
[32m+[m[32m    <button class="btn btn-info mt-5" data-bs-toggle="modal" data-bs-target="#bookModal">+ Add Book</button>[m
[32m+[m[32m    <div class="modal fade" id="bookModal">[m
[32m+[m[32m        <div class="modal-dialog">[m
[32m+[m[32m            <div class="modal-content">[m
[32m+[m[32m                <div class="modal-header">[m
[32m+[m[32m                    <h5 class="modal-title">Add/Edit Book</h5>[m
[32m+[m[32m                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>[m
[32m+[m[32m                </div>[m
[32m+[m[32m                <div class="modal-body">[m
[32m+[m[32m                    <form id="bookForm">[m
[32m+[m[32m                        <input type="hidden" id="bookId">[m
[32m+[m[32m                        <input type="text" id="title" class="form-control mb-2" placeholder="Title" required>[m
[32m+[m[32m                        <input type="text" id="author" class="form-control mb-2" placeholder="Author" required>[m
[32m+[m[32m                        <input type="text" id="genre" class="form-control mb-2" placeholder="Genre" required>[m
[32m+[m[32m                        <select id="status" class="form-control mb-2">[m
[32m+[m[32m                            <option value="unread">Unread</option>[m
[32m+[m[32m                            <option value="read">Read</option>[m
[32m+[m[32m                        </select>[m
[32m+[m[32m                        <input type="file" id="coverImage" class="form-control mb-2" accept="image/*">[m
[32m+[m[32m                        <button type="submit" class="btn btn-success w-100">Save Book</button>[m
[32m+[m[32m                    </form>[m
[32m+[m[32m                </div>[m
[32m+[m[32m <!-- Bootstrap JS and Popper -->[m
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>[m
[32m+[m[32m<script src= "index.js"></script>[m
 [m
 </body>[m
 </html>[m
\ No newline at end of file[m
[1mdiff --git a/index.js b/index.js[m
[1mnew file mode 100644[m
[1mindex 0000000..f3101a1[m
[1m--- /dev/null[m
[1m+++ b/index.js[m
[36m@@ -0,0 +1,29 @@[m
[32m+[m[32mdocument.addEventListener("DOMContentLoaded", () => {[m
[32m+[m[32m    let books = JSON.parse(localStorage.getItem("newBooksModel")) || [];[m
[32m+[m[32m    const bookList = document.getElementById("bookList");[m
[32m+[m
[32m+[m[32m    // Function to render the list of books[m
[32m+[m[32m    function renderBooks() {[m
[32m+[m[32m        bookList.innerHTML = ""; // Clear the current book list[m
[32m+[m
[32m+[m[32m        // Loop through each book and display it[m
[32m+[m[32m        for (let i = 0; i < books.length; i++) {[m
[32m+[m[32m            const book = books[i];[m
[32m+[m[32m            const bookDiv = document.createElement("div");[m
[32m+[m[32m            bookDiv.classList.add("col-md-3", "book-card");[m
[32m+[m[41m            [m
[32m+[m[32m            // Simple structure for each book card[m
[32m+[m[32m            bookDiv.innerHTML = `[m
[32m+[m[32m                <h5>${book.title}</h5>[m
[32m+[m[32m                <p>${book.author}</p>[m
[32m+[m[32m                <p>Status: ${book.status}</p>[m
[32m+[m[32m            `;[m
[32m+[m[41m            [m
[32m+[m[32m            // Append the book card to the book list[m
[32m+[m[32m            bookList.appendChild(bookDiv);[m
[32m+[m[32m        }[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    // Call the renderBooks function to display the books[m
[32m+[m[32m    renderBooks();[m
[32m+[m[32m});[m
