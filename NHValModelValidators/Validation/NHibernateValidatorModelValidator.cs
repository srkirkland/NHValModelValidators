using System.Collections.Generic;
using System.Web.Mvc;
using NHValModelValidators.Models;

namespace NHValModelValidators.Validation
{
    /// <summary>
    /// Server side model validator for NHVal
    /// </summary>
    public class NHibernateValidatorModelValidator : ModelValidator
    {
        public NHibernateValidatorModelValidator(ModelMetadata metadata, ControllerContext controllerContext)
            : base(metadata, controllerContext)
        {

        }

        /// <summary>
        /// Validate the object passed in and return the validation results
        /// </summary>
        public override IEnumerable<ModelValidationResult> Validate(object container)
        {
            var validationEngine = ValidatorEngineFactory.ValidatorEngine;

            var validationResults = validationEngine.Validate(container);

            foreach (var validationResult in validationResults)
            {
                yield return
                    new ModelValidationResult { MemberName = validationResult.PropertyName, Message = validationResult.Message };
            }
        }
    }
}