namespace NHValModelValidators.Models
{
    public class BaseObject
    {
        public int Id { get; set; }

        public bool IsValid()
        {
            return ValidatorEngineFactory.ValidatorEngine.IsValid(this);
        }
    }
}