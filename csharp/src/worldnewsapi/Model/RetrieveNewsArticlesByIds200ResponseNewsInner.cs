/*
 * World News API
 *
 * The world's news wrapped into a single API.
 *
 * The version of the OpenAPI document: 2.0.0
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
    /// RetrieveNewsArticlesByIds200ResponseNewsInner
    /// </summary>
    [DataContract(Name = "retrieveNewsArticlesByIds_200_response_news_inner")]
    public partial class RetrieveNewsArticlesByIds200ResponseNewsInner : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="RetrieveNewsArticlesByIds200ResponseNewsInner" /> class.
        /// </summary>
        /// <param name="summary">summary.</param>
        /// <param name="image">image.</param>
        /// <param name="sentiment">sentiment.</param>
        /// <param name="language">language.</param>
        /// <param name="title">title.</param>
        /// <param name="url">url.</param>
        /// <param name="sourceCountry">sourceCountry.</param>
        /// <param name="id">id.</param>
        /// <param name="text">text.</param>
        /// <param name="category">category.</param>
        /// <param name="publishDate">publishDate.</param>
        /// <param name="authors">authors.</param>
        public RetrieveNewsArticlesByIds200ResponseNewsInner(string summary = default(string), string image = default(string), decimal sentiment = default(decimal), string language = default(string), string title = default(string), string url = default(string), string sourceCountry = default(string), int id = default(int), string text = default(string), string category = default(string), string publishDate = default(string), List<string> authors = default(List<string>))
        {
            this.Summary = summary;
            this.Image = image;
            this.Sentiment = sentiment;
            this.Language = language;
            this.Title = title;
            this.Url = url;
            this.SourceCountry = sourceCountry;
            this.Id = id;
            this.Text = text;
            this.Category = category;
            this.PublishDate = publishDate;
            this.Authors = authors;
        }

        /// <summary>
        /// Gets or Sets Summary
        /// </summary>
        [DataMember(Name = "summary", EmitDefaultValue = true)]
        public string Summary { get; set; }

        /// <summary>
        /// Gets or Sets Image
        /// </summary>
        [DataMember(Name = "image", EmitDefaultValue = true)]
        public string Image { get; set; }

        /// <summary>
        /// Gets or Sets Sentiment
        /// </summary>
        [DataMember(Name = "sentiment", EmitDefaultValue = false)]
        public decimal Sentiment { get; set; }

        /// <summary>
        /// Gets or Sets Language
        /// </summary>
        [DataMember(Name = "language", EmitDefaultValue = true)]
        public string Language { get; set; }

        /// <summary>
        /// Gets or Sets Title
        /// </summary>
        [DataMember(Name = "title", EmitDefaultValue = true)]
        public string Title { get; set; }

        /// <summary>
        /// Gets or Sets Url
        /// </summary>
        [DataMember(Name = "url", EmitDefaultValue = true)]
        public string Url { get; set; }

        /// <summary>
        /// Gets or Sets SourceCountry
        /// </summary>
        [DataMember(Name = "source_country", EmitDefaultValue = true)]
        public string SourceCountry { get; set; }

        /// <summary>
        /// Gets or Sets Id
        /// </summary>
        [DataMember(Name = "id", EmitDefaultValue = false)]
        public int Id { get; set; }

        /// <summary>
        /// Gets or Sets Text
        /// </summary>
        [DataMember(Name = "text", EmitDefaultValue = true)]
        public string Text { get; set; }

        /// <summary>
        /// Gets or Sets Category
        /// </summary>
        [DataMember(Name = "category", EmitDefaultValue = true)]
        public string Category { get; set; }

        /// <summary>
        /// Gets or Sets PublishDate
        /// </summary>
        [DataMember(Name = "publish_date", EmitDefaultValue = true)]
        public string PublishDate { get; set; }

        /// <summary>
        /// Gets or Sets Authors
        /// </summary>
        [DataMember(Name = "authors", EmitDefaultValue = false)]
        public List<string> Authors { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class RetrieveNewsArticlesByIds200ResponseNewsInner {\n");
            sb.Append("  Summary: ").Append(Summary).Append("\n");
            sb.Append("  Image: ").Append(Image).Append("\n");
            sb.Append("  Sentiment: ").Append(Sentiment).Append("\n");
            sb.Append("  Language: ").Append(Language).Append("\n");
            sb.Append("  Title: ").Append(Title).Append("\n");
            sb.Append("  Url: ").Append(Url).Append("\n");
            sb.Append("  SourceCountry: ").Append(SourceCountry).Append("\n");
            sb.Append("  Id: ").Append(Id).Append("\n");
            sb.Append("  Text: ").Append(Text).Append("\n");
            sb.Append("  Category: ").Append(Category).Append("\n");
            sb.Append("  PublishDate: ").Append(PublishDate).Append("\n");
            sb.Append("  Authors: ").Append(Authors).Append("\n");
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
