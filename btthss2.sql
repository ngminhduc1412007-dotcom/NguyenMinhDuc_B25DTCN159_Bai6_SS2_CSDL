-- BÀI TẬP TỔNG HỢP
CREATE TABLE book (
	book_id CHAR(5),
    book_name VARCHAR(200) NOT NULL,
    quantity INT CHECK(quantity >= 0),
    rent DECIMAL(10, 2) DEFAULT 5000,
    PRIMARY KEY(book_id)
);

CREATE TABLE borrow_book (
	borrow_book_id INT AUTO_INCREMENT,
    book_id CHAR(5) NOT NULL,
    book_date DATE DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(borrow_book_id),
    FOREIGN KEY(book_id) REFERENCES book(book_id)
);

-- thêm cột vào trong bảng
ALTER TABLE book
ADD COLUMN import_date DATE;