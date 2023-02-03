using System.ComponentModel.DataAnnotations;

namespace ApiCurso.Modelos.DataModels
{
    public class Curso: BaseEntity
    {
        [Required, StringLength(100)]
        public String Name { get; set; } = String.Empty;

        [Required, StringLength(280)]
        public String ShortDescription { get; set; } = String.Empty;
        
        [Required]
        public String LongDescription { get; set; } = String.Empty;

        [Required]
        public string TargetAudiences { get; set; } = string.Empty;

        [Required]
        public string Objetivoes { get; set; } = string.Empty;

        [Required]
        public string requirements { get; set; } = string.Empty;

        public enum Level 
        {
            Basico = 1,
            Intermedio = 2,
            Avanzado = 3
        }
    }
}
