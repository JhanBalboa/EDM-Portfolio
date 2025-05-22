# 📘 Finals Lab Task 3: Table Manipulation

---

## ✅ Task 1: Create the `products` Table

- This task starts by creating a `products` table.
- Each product includes:
  - An `id` — a unique integer that auto-increments and serves as the primary key.
  - A `product_name` — a string up to 100 characters, and it cannot be null.
  - A `price` — stored as a decimal.

---

## ✅ Task 2: Add a CHECK Constraint

- We add a **CHECK constraint** to the `price` field to make sure:
  - The price must be **greater than 0**.
- This ensures we don't accidentally enter products with negative or invalid prices.

---

## ✅ Task 3: Insert Products (Valid Only)

- We were given a list of 10 products to insert.
- However, only the ones with **valid prices (greater than 0)** should be accepted.
- Products that **violate the check constraint** (with negative prices) will be rejected.

✅ Valid products to insert:
- Laptop – 999.99  
- Smartphone – 599.99  
- Tablet – 299.99  
- Keyboard – 19.99  
- Mouse – 14.99  
- Desk Lamp – 24.99  
- Speakers – 9.99

❌ Invalid products (excluded):
- Headphones – -49.99  
- Monitor – -149.99  
- External Hard Drive – -79.99

---

## ✅ Task 4: Modify `product_name` Column

- After inserting the data, we updated the table structure.
- The `product_name` column was modified from 100 to **120 characters max** to allow longer product names if needed.

---

## 🔗 Task Outputs

---

### 📄 Here's the Query Statements [Finals Lab Task 3](Query%20Statements)

---

### 🗂️ Here's the Table Structure (See screenshot)
![Table Structure](FT3%20Table%20Structure.PNG)

---

### 📊 Here's the ER Diagram or Relational Schema (See screenshot)
![ER Diagram](FT3%20ERDiagram.PNG)

---

### 💾 Here's the Final SQL File [Finals Lab Task 3](Finals%20Lab%20Task%203.sql)
