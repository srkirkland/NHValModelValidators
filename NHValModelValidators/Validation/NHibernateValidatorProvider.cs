using System.Collections.Generic;
using System.Web.Mvc;

namespace NHValModelValidators.Validation
{
    /// <summary>
    /// Server side validator provider for NHVal
    /// </summary>
    public class NHibernateValidatorProvider : ModelValidatorProvider
    {
        public override IEnumerable<ModelValidator> GetValidators(ModelMetadata metadata, ControllerContext context)
        {
            yield return new NHibernateValidatorModelValidator(metadata, context);
        }
    }
}