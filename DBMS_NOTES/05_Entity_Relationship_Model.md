# 📘 05_Entity_Relationship_(ER)_Model

---

## 1️⃣ What is ER Model?

The **Entity Relationship (ER) Model** is a **conceptual data model** used to **design the structure of a database** by representing:

* **Entities**
* **Attributes**
* **Relationships**

👉 **Interview-safe line:**

> ER model visually represents real-world data and their relationships.

---

## 2️⃣ Why ER Model is Used?

ER Model helps to:

* Understand system requirements clearly
* Reduce confusion before database creation
* Communicate design with non-technical users
* Convert requirements into tables easily

---

## 3️⃣ Main Components of ER Model

ER Model has **three core components**:

1. Entity
2. Attribute
3. Relationship

---

## 4️⃣ Entity

### 🔹 What is an Entity?

An **entity** is a **real-world object** that has independent existence.

Examples:

* Student
* Employee
* Course

👉 **Interview line:**

> An entity represents a real-world object stored in a database.

---

### 🔹 Types of Entities

#### 1. Strong Entity

* Has a **primary key**
* Exists independently

Example:

```
STUDENT (Student_ID, Name, Age)
```

#### 2. Weak Entity

* Does **not** have its own primary key
* Depends on a strong entity

Example:

```
DEPENDENT depends on EMPLOYEE
```

---

## 5️⃣ Attribute

### 🔹 What is an Attribute?

An **attribute** describes the **properties of an entity**.

Example:

* Student_ID
* Name
* Age

---

### 🔹 Types of Attributes

| Attribute Type | Description       | Example            |
| -------------- | ----------------- | ------------------ |
| Simple         | Atomic value      | Age                |
| Composite      | Made of sub-parts | Name (First, Last) |
| Single-valued  | One value         | Roll No            |
| Multi-valued   | Multiple values   | Phone numbers      |
| Derived        | Calculated        | Age (from DOB)     |

👉 **Smart point:**

> Derived attributes are not stored physically.

---

## 6️⃣ Relationship

### 🔹 What is a Relationship?

A **relationship** shows how **entities are connected**.

Example:

```
Student → enrolls → Course
```

---

### 🔹 Types of Relationships (Cardinality)

![Image](https://images.openai.com/static-rsc-3/6-03tB_pdDxk_2cpZZUf66qtT10zA0xMAwG4JN2Z0RNtDYKFnrjROR0ok6YaURFfDn-zWfbPCAGe3rg3vN8nJYOO3hOlHA9to5gie5c6ik8?purpose=fullsize)

![Image](https://images.openai.com/static-rsc-3/AjBMmvSnrsW4kozb1e2Bdv--7etzR3O8m8HPuo-rdheNvPyujSqoVOl2hrWkqdleruaCmNWJEgYWGwJTSZrFFNWNHJP4WGoVxCCut82zWy0?purpose=fullsize)

1. **One-to-One (1:1)**
   One entity relates to one entity
   Example: Person – Passport

2. **One-to-Many (1:N)**
   One entity relates to many
   Example: Teacher – Students

3. **Many-to-Many (M:N)**
   Many relate to many
   Example: Student – Course

---

## 7️⃣ Degree of Relationship

* **Unary**: Entity relates to itself
* **Binary**: Two entities (most common)
* **Ternary**: Three entities

---

## 8️⃣ Keys in ER Model

### 🔹 Primary Key

* Uniquely identifies an entity

### 🔹 Foreign Key

* Connects two entities

### 🔹 Candidate Key

* Possible keys that can be primary key

---

## 9️⃣ ER Diagram Symbols

![Image](https://images.edrawsoft.com/articles/er-diagram-symbols/chens-notation-1.png)

![Image](https://venngage-wordpress.s3.amazonaws.com/uploads/2023/11/ERD_Symbols_and_Notations.png)

| Symbol           | Meaning               |
| ---------------- | --------------------- |
| Rectangle        | Entity                |
| Ellipse          | Attribute             |
| Diamond          | Relationship          |
| Double Rectangle | Weak Entity           |
| Double Ellipse   | Multivalued Attribute |

---

## 🔟 Mapping ER Model to Tables

* Entity → Table
* Attribute → Column
* Primary Key → Table key
* Relationship → Foreign key

👉 **Interview-safe line:**

> ER model is converted into relational tables during database design.

---

## 1️⃣1️⃣ Real-World Example

**College Database**

* Entities: Student, Course
* Relationship: Enrollment
* Attributes: Student_ID, Course_ID

---

## 🔹 Unique & Smart Interview Points

* ER Model is **DBMS independent**
* Used in **initial design phase**
* Weak entity depends on strong entity
* Many-to-many relationships require **junction table**
* Good ER design reduces normalization effort

---

## ⭐ MOST IMPORTANT INTERVIEW QUESTIONS (Topic 05)

### 1️⃣ What is ER Model?

**Answer:**
ER Model is a conceptual model that represents entities and relationships in a database.

---

### 2️⃣ Difference between strong and weak entity?

**Answer:**
Strong entity has a primary key, weak entity depends on another entity.

---

### 3️⃣ What is cardinality?

**Answer:**
Cardinality defines the number of entity instances involved in a relationship.

---

### 4️⃣ What is a derived attribute?

**Answer:**
An attribute whose value is calculated from other attributes.

---

### 5️⃣ How is many-to-many relationship implemented?

**Answer:**
Using an intermediate (junction) table.

---

## 🧠 1-Minute Revision

* ER model = conceptual design
* Entity, Attribute, Relationship
* Cardinality defines mapping
* Used before creating tables

---
