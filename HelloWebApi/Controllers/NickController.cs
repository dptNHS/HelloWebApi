using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace HelloWebApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class NickController : ControllerBase
    {
        public ActionResult<IEnumerable<string>> Get()
        {
            //return BadRequest();
            //return Unauthorized();
            return NotFound();

            //return new string[] { "things", "more things" };
        }
        [Route("{page}")]
        public ActionResult<object[]> Get(int page)
        {
            var token = this.Request.Headers["Authorization"].ToString();
            if(token != "Bearer User123")
            {
                return Unauthorized();
            }
            if (page < 1)
            {
                return NotFound();
            }
            return new object[]
            {
                new{name="fred", speech="yabadabadoo"},
                new{name="dino", speech="roaaarr"}
            };
        } 
    }
}