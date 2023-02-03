using ApiCurso.Modelos.DataModels;
using Microsoft.EntityFrameworkCore;

namespace ApiCurso.DataAcces
{
    public class CursoDBContext: DbContext
    {
        public CursoDBContext(DbContextOptions<CursoDBContext> options) : base(options) 
        { 
        
        }

        public DbSet<Curso>? Cursos { get; set; }
    }
}
