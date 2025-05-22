# Finals Lab Task 1 - Multi Level Company Database

---

## ✅ Task 1: Create the `employees` Table

- We're starting by making a table to store employee information.
- Every employee has:
  - A unique ID (`employee_id`) that increases automatically.
  - A name (`employee_name`) that can't be empty.
  - A `manager_id` that points to another employee (their manager).
- The cool part: an employee can be the manager of another employee, so it's a **self-referencing table**.

---

## ✅ Task 2: Create the `departments` Table

- This table is for keeping track of all the departments in the company.
- Each department has:
  - A unique ID (`department_id`).
  - A name (`department_name`) that also can't be empty.

---

## ✅ Task 3: Create the `employee_departments` Table

- This table links employees to departments.
- Why? Because:
  - One employee can belong to **multiple departments**.
  - And each department can have **multiple employees**.
- This table creates a **many-to-many** relationship.
- It uses a combo of `employee_id` and `department_id` as its **primary key** to make sure the same pair doesn't get added twice.

---

## ✅ Task 4: Create the `employee_projects` Table

- This one keeps track of which projects each employee is working on.
- Every entry links:
  - An `employee_id` (who is doing the work),
  - To a `project_name` (what they’re working on).
- This way, employees can be on **multiple projects**.

---

## ✅ Task 5: Create the `managers` Table

- Even though we already track managers in the `employees` table using `manager_id`, we make a separate `managers` table.
- Why? For easier filtering or if we want to treat managers as a **special group** later.
- This table:
  - Has its own unique `manager_id`.
  - Links to an `employee_id` to show which employee is a manager.

---

## 🧠 Final Thoughts

- These tables are all **linked together using foreign keys**, which helps keep the data consistent and organized.
- This structure lets us answer questions like:
  - Who works in which department?
  - Who is each employee’s manager?
  - What projects is someone working on?
  - Who are the company’s managers?


## Task Outputs

## Here's the Query Statements [Finals Lab Task 1](Query%20Statements)

## Here's the Table Structure (See screenshot)
![Sample Output](Table%20Structure%20(Task%201-5).PNG)

## Here's the ER Diagram (See screenshot)
![Sample Output](ER%20Diagram.PNG)

## Here's the Final file output [Finals Lab Task 1](Finals%20Lab%20Task%201.sql)
