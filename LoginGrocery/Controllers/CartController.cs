using LoginGrocery.Models;
using System;
using System.Data;
using System.Web.Http;

namespace LoginGrocery.Controllers
{
    public class CartController : ApiController
    {
        private Functions _functions;

        public CartController()
        {
            _functions = new Functions();
        }

        // GET api/cart
        public IHttpActionResult Get()
        {
            string query = "SELECT * FROM Cart";
            DataTable dt = _functions.GetData(query);
            return Ok(dt);
        }

        // GET api/cart/5
        public IHttpActionResult Get(int id)
        {
            string query = $"SELECT * FROM Cart WHERE CartId = {id}";
            DataTable dt = _functions.GetData(query);

            if (dt.Rows.Count == 0)
            {
                return NotFound();
            }

            return Ok(dt.Rows[0]);
        }

        // POST api/cart
        public IHttpActionResult Post([FromBody] CartItem cartItem)
        {
            string query = $"INSERT INTO Cart (ProductId, Quantity, TotalCost, UserId) " +
                           $"VALUES ({cartItem.ProductId}, {cartItem.Quantity}, {cartItem.TotalCost}, {cartItem.UserId})";

            int rowsAffected = _functions.SetData(query);

            if (rowsAffected > 0)
            {
                return Created(Request.RequestUri + "/" + cartItem.CartId, cartItem);
            }
            else
            {
                return InternalServerError(new Exception("Failed to add item to cart."));
            }
        }

        // PUT api/cart/5
        public IHttpActionResult Put(int id, [FromBody] CartItem cartItem)
        {
            string query = $"UPDATE Cart SET ProductId = {cartItem.ProductId}, " +
                           $"Quantity = {cartItem.Quantity}, TotalCost = {cartItem.TotalCost}, " +
                           $"UserId = {cartItem.UserId} WHERE CartId = {id}";

            int rowsAffected = _functions.SetData(query);

            if (rowsAffected > 0)
            {
                return Ok(cartItem);
            }
            else
            {
                return NotFound();
            }
        }

        // DELETE api/cart/5
        public IHttpActionResult Delete(int id)
        {
            string query = $"DELETE FROM Cart WHERE CartId = {id}";

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
