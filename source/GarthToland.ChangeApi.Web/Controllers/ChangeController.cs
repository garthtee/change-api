using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using GarthToland.ChangeApi.Models.Generated;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;

namespace GarthToland.ChangeApi.Web.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class ChangeController : ControllerBase
    {
        private readonly ChangeDbContext _context;
        private readonly ILogger<ChangeController> _logger;

        public ChangeController(ChangeDbContext context, ILogger<ChangeController> logger)
        {
            _context = context;
            _logger = logger;
        }

        [HttpGet]
        public async Task<IActionResult> Index()
        {
            var changes = await _context.Changes.ToListAsync();

            _logger.LogInformation("{changes} changes found.", changes.Count);

            return Ok(changes);
        }
    }
}
