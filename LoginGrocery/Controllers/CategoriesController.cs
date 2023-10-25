using LoginGrocery.Models;
using System;
using System.Data;
using System.Web.Http;

namespace LoginGrocery.Controllers
{
    public class CategoriesController : ApiController
    {
        private Functions _functions;

        public CategoriesController()
        {
            _functions = new Functions();
        }

        // GET api/categories
        public IHttpActionResult Get()
        {
            string query = "SELECT * FROM Categories";
            DataTable dt = _functions.GetData(query);
            return Ok(dt);
        }

        // GET api/categories/5
        public IHttpActionResult Get(int id)
        {
            string query = $"SELECT * FROM Categories WHERE CategoryId = {id}";
            DataTable dt = _functions.GetData(query);

            if (dt.Rows.Count == 0)
            {
                return NotFound();
            }

            return Ok(dt.Rows[0]);
        }

        // POST api/categories
        public IHttpActionResult Post([FromBody] Category category)
        {
            string query = $"INSERT INTO Categories (CategoryName) " +
                           $"VALUES ('{category.CategoryName}')";

            int rowsAffected = _functions.SetData(query);

            if (rowsAffected > 0)
            {
                return Created(Request.RequestUri + "/" + category.CategoryId, category);
            }
            else
            {
                return InternalServerError(new Exception("Failed to insert category."));
            }
        }

        // PUT api/categories/5
        public IHttpActionResult Put(int id, [FromBody] Category category)
        {
            string query = $"UPDATE Categories SET CategoryName = '{category.CategoryName}' " +
                           $"WHERE CategoryId = {id}";

            int rowsAffected = _functions.SetData(query);

            if (rowsAffected > 0)
            {
                return Ok(category);
            }
            else
            {
                return NotFound();
            }
        }

        // DELETE api/categories/5
        public IHttpActionResult Delete(int id)
        {
            string query = $"DELETE FROM Categories WHERE CategoryId = {id}";

            int rowsAffected = _functions.SetData(query);

            if (rowsAffected > 0)
            {
                return Ok();
            }
            else
            {
                return NotFound();
            }
        }
    }
}
