/*
 * World News API
 *
 * The world's news wrapped into a single API.
 *
 * The version of the OpenAPI document: 1.1
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
    /// A news entry.
    /// </summary>
    [DataContract(Name = "News")]
    public partial class News : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="News" /> class.
        /// </summary>
        /// <param name="id">id.</param>
        /// <param name="title">title.</param>
        /// <param name="text">text.</param>
        /// <param name="summary">summary.</param>
        /// <param name="url">url.</param>
        /// <param name="image">image.</param>
        /// <param name="publishDate">publishDate.</param>
        /// <param name="author">author.</param>
        /// <param name="language">language.</param>
        /// <param name="sourceCountry">sourceCountry.</param>
        /// <param name="sentiment">sentiment.</param>
        public News(int id = default(int), string title = default(string), string text = default(string), string summary = default(string), string url = default(string), string image = default(string), string publishDate = default(string), string author = default(string), string language = default(string), string sourceCountry = default(string), decimal sentiment = default(decimal))
        {
            this.Id = id;
            this.Title = title;
            this.Text = text;
            this.Summary = summary;
            this.Url = url;
            this.Image = image;
            this.PublishDate = publishDate;
            this.Author = author;
            this.Language = language;
            this.SourceCountry = sourceCountry;
            this.Sentiment = sentiment;
        }

        /// <summary>
        /// Gets or Sets Id
        /// </summary>
        [DataMember(Name = "id", EmitDefaultValue = false)]
        public int Id { get; set; }

        /// <summary>
        /// Gets or Sets Title
        /// </summary>
        [DataMember(Name = "title", EmitDefaultValue = false)]
        public string Title { get; set; }

        /// <summary>
        /// Gets or Sets Text
        /// </summary>
        [DataMember(Name = "text", EmitDefaultValue = false)]
        public string Text { get; set; }

        /// <summary>
        /// Gets or Sets Summary
        /// </summary>
        [DataMember(Name = "summary", EmitDefaultValue = false)]
        public string Summary { get; set; }

        /// <summary>
        /// Gets or Sets Url
        /// </summary>
        [DataMember(Name = "url", EmitDefaultValue = false)]
        public string Url { get; set; }

        /// <summary>
        /// Gets or Sets Image
        /// </summary>
        [DataMember(Name = "image", EmitDefaultValue = true)]
        public string Image { get; set; }

        /// <summary>
        /// Gets or Sets PublishDate
        /// </summary>
        [DataMember(Name = "publish_date", EmitDefaultValue = false)]
        public string PublishDate { get; set; }

        /// <summary>
        /// Gets or Sets Author
        /// </summary>
        [DataMember(Name = "author", EmitDefaultValue = false)]
        public string Author { get; set; }

        /// <summary>
        /// Gets or Sets Language
        /// </summary>
        [DataMember(Name = "language", EmitDefaultValue = false)]
        public string Language { get; set; }

        /// <summary>
        /// Gets or Sets SourceCountry
        /// </summary>
        [DataMember(Name = "source_country", EmitDefaultValue = false)]
        public string SourceCountry { get; set; }

        /// <summary>
        /// Gets or Sets Sentiment
        /// </summary>
        [DataMember(Name = "sentiment", EmitDefaultValue = false)]
        public decimal Sentiment { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class News {\n");
            sb.Append("  Id: ").Append(Id).Append("\n");
            sb.Append("  Title: ").Append(Title).Append("\n");
            sb.Append("  Text: ").Append(Text).Append("\n");
            sb.Append("  Summary: ").Append(Summary).Append("\n");
            sb.Append("  Url: ").Append(Url).Append("\n");
            sb.Append("  Image: ").Append(Image).Append("\n");
            sb.Append("  PublishDate: ").Append(PublishDate).Append("\n");
            sb.Append("  Author: ").Append(Author).Append("\n");
            sb.Append("  Language: ").Append(Language).Append("\n");
            sb.Append("  SourceCountry: ").Append(SourceCountry).Append("\n");
            sb.Append("  Sentiment: ").Append(Sentiment).Append("\n");
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
