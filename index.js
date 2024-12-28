const db = require("./db/connection");
async function connection(sql, options) {
  const client = await db.connect();
  try {
    return await client.query(sql, options);
  } finally {
    client.release();
  }
}
function getAllProducts() {
  connection("SELECT * FROM products").then(({ rows }) => {
    console.table(rows);
  });
}
// getAllProducts();

function getAllDepartments() {
  connection("SELECT * FROM departments").then(({ rows }) => {
    console.table(rows);
  });
}

function addProduct(name, price, quantity, department_id) {
  connection ( 'INSERT INTO products (name, price, quantity, department_id) VALUES ($1, $2, $3, $4)', [name, price, quantity, department_id] )
  };
  // addProduct('cilantro', 1.99, 100, 3);
  function updateProductQuantity(id, quantity) {
    connection ( 'UPDATE products SET quantity = $2 WHERE id = $1', [id, quantity] )
  }
  updateProductQuantity(21, 20);