/*
 * World News API
 *
 * The world's news wrapped into a single API.
 *
 * The version of the OpenAPI document: 1.1.1
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
    /// TopNews200ResponseTopNewsInner
    /// </summary>
    [DataContract(Name = "topNews_200_response_top_news_inner")]
    public partial class TopNews200ResponseTopNewsInner : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="TopNews200ResponseTopNewsInner" /> class.
        /// </summary>
        /// <param name="news">news.</param>
        public TopNews200ResponseTopNewsInner(List<TopNews200ResponseTopNewsInnerNewsInner> news = default(List<TopNews200ResponseTopNewsInnerNewsInner>))
        {
            this.News = news;
        }

        /// <summary>
        /// Gets or Sets News
        /// </summary>
        [DataMember(Name = "news", EmitDefaultValue = false)]
        public List<TopNews200ResponseTopNewsInnerNewsInner> News { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class TopNews200ResponseTopNewsInner {\n");
            sb.Append("  News: ").Append(News).Append("\n");
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
        IEnumerable<System.ComponentModel.DataAnnotations.ValidationResult> IValidatableObject.Validate(ValidationContext validationContext)
        {
            yield break;
        }
    }

}
