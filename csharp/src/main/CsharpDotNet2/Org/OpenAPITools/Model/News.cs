using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using System.Runtime.Serialization;
using Newtonsoft.Json;

namespace Org.OpenAPITools.Model {

  /// <summary>
  /// A news entry.
  /// </summary>
  [DataContract]
  public class News {
    /// <summary>
    /// Gets or Sets Id
    /// </summary>
    [DataMember(Name="id", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "id")]
    public int? Id { get; set; }

    /// <summary>
    /// Gets or Sets Title
    /// </summary>
    [DataMember(Name="title", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "title")]
    public string Title { get; set; }

    /// <summary>
    /// Gets or Sets Text
    /// </summary>
    [DataMember(Name="text", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "text")]
    public string Text { get; set; }

    /// <summary>
    /// Gets or Sets Summary
    /// </summary>
    [DataMember(Name="summary", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "summary")]
    public string Summary { get; set; }

    /// <summary>
    /// Gets or Sets Url
    /// </summary>
    [DataMember(Name="url", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "url")]
    public string Url { get; set; }

    /// <summary>
    /// Gets or Sets Image
    /// </summary>
    [DataMember(Name="image", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "image")]
    public string Image { get; set; }

    /// <summary>
    /// Gets or Sets PublishDate
    /// </summary>
    [DataMember(Name="publish_date", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "publish_date")]
    public string PublishDate { get; set; }

    /// <summary>
    /// Gets or Sets Author
    /// </summary>
    [DataMember(Name="author", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "author")]
    public string Author { get; set; }

    /// <summary>
    /// Gets or Sets Language
    /// </summary>
    [DataMember(Name="language", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "language")]
    public string Language { get; set; }

    /// <summary>
    /// Gets or Sets SourceCountry
    /// </summary>
    [DataMember(Name="source_country", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "source_country")]
    public string SourceCountry { get; set; }

    /// <summary>
    /// Gets or Sets Sentiment
    /// </summary>
    [DataMember(Name="sentiment", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "sentiment")]
    public decimal? Sentiment { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
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
    /// Get the JSON string presentation of the object
    /// </summary>
    /// <returns>JSON string presentation of the object</returns>
    public string ToJson() {
      return Newtonsoft.Json.JsonConvert.SerializeObject(this, Newtonsoft.Json.Formatting.Indented);
    }

}
}
