/*
 * World News API
 *
 * The world's news wrapped into a single API.
 *
 * The version of the OpenAPI document: 2.2.0
 * Contact: mail@worldnewsapi.com
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */


using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.IO;
using System.Runtime.Serialization;
using System.Text;
using System.Text.RegularExpressions;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using Newtonsoft.Json.Linq;
using System.ComponentModel.DataAnnotations;
using OpenAPIDateConverter = worldnewsapi.Client.OpenAPIDateConverter;

namespace worldnewsapi.Model
{
    /// <summary>
    /// SearchNewsSources200Response
    /// </summary>
    [DataContract(Name = "searchNewsSources_200_response")]
    public partial class SearchNewsSources200Response : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="SearchNewsSources200Response" /> class.
        /// </summary>
        /// <param name="available">available.</param>
        /// <param name="sources">sources.</param>
        public SearchNewsSources200Response(int available = default(int), List<SearchNewsSources200ResponseSourcesInner> sources = default(List<SearchNewsSources200ResponseSourcesInner>))
        {
            this.Available = available;
            this.Sources = sources;
        }

        /// <summary>
        /// Gets or Sets Available
        /// </summary>
        [DataMember(Name = "available", EmitDefaultValue = false)]
        public int Available { get; set; }

        /// <summary>
        /// Gets or Sets Sources
        /// </summary>
        [DataMember(Name = "sources", EmitDefaultValue = false)]
        public List<SearchNewsSources200ResponseSourcesInner> Sources { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class SearchNewsSources200Response {\n");
            sb.Append("  Available: ").Append(Available).Append("\n");
            sb.Append("  Sources: ").Append(Sources).Append("\n");
            sb.Append("}\n");
            return sb.ToString();
        }

        /// <summary>
        /// Returns the JSON string presentation of the object
        /// </summary>
        /// <returns>JSON string presentation of the object</returns>
        public virtual string ToJson()
        {
            return Newtonsoft.Json.JsonConvert.SerializeObject(this, Newtonsoft.Json.Formatting.Indented);
        }

        /// <summary>
        /// To validate all properties of the instance
        /// </summary>
        /// <param name="validationContext">Validation context</param>
        /// <returns>Validation Result</returns>
        IEnumerable<ValidationResult> IValidatableObject.Validate(ValidationContext validationContext)
        {
            yield break;
        }
    }

}
