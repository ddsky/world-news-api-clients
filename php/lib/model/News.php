<?php
/**
 * News
 *
 * PHP version 7.3
 *
 * @category Class
 * @package  com.worldnewsapi.client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 */

/**
 * World News API
 *
 * The world's news wrapped into a single API.
 *
 * The version of the OpenAPI document: 1.0
 * Contact: mail@worldnewsapi.com
 * Generated by: https://openapi-generator.tech
 * OpenAPI Generator version: 5.4.0
 */

/**
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

namespace com.worldnewsapi.client\com.worldnewsapi.client.model;

use \ArrayAccess;
use \com.worldnewsapi.client\ObjectSerializer;

/**
 * News Class Doc Comment
 *
 * @category Class
 * @description A news entry.
 * @package  com.worldnewsapi.client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 * @implements \ArrayAccess<TKey, TValue>
 * @template TKey int|null
 * @template TValue mixed|null
 */
class News implements ModelInterface, ArrayAccess, \JsonSerializable
{
    public const DISCRIMINATOR = null;

    /**
      * The original name of the model.
      *
      * @var string
      */
    protected static $openAPIModelName = 'News';

    /**
      * Array of property to type mappings. Used for (de)serialization
      *
      * @var string[]
      */
    protected static $openAPITypes = [
        'id' => 'int',
        'title' => 'string',
        'text' => 'string',
        'summary' => 'string',
        'url' => 'string',
        'image' => 'string',
        'author' => 'string',
        'language' => 'string',
        'source_country' => 'string',
        'sentiment' => 'float'
    ];

    /**
      * Array of property to format mappings. Used for (de)serialization
      *
      * @var string[]
      * @phpstan-var array<string, string|null>
      * @psalm-var array<string, string|null>
      */
    protected static $openAPIFormats = [
        'id' => null,
        'title' => null,
        'text' => null,
        'summary' => null,
        'url' => null,
        'image' => null,
        'author' => null,
        'language' => null,
        'source_country' => null,
        'sentiment' => null
    ];

    /**
     * Array of property to type mappings. Used for (de)serialization
     *
     * @return array
     */
    public static function openAPITypes()
    {
        return self::$openAPITypes;
    }

    /**
     * Array of property to format mappings. Used for (de)serialization
     *
     * @return array
     */
    public static function openAPIFormats()
    {
        return self::$openAPIFormats;
    }

    /**
     * Array of attributes where the key is the local name,
     * and the value is the original name
     *
     * @var string[]
     */
    protected static $attributeMap = [
        'id' => 'id',
        'title' => 'title',
        'text' => 'text',
        'summary' => 'summary',
        'url' => 'url',
        'image' => 'image',
        'author' => 'author',
        'language' => 'language',
        'source_country' => 'source_country',
        'sentiment' => 'sentiment'
    ];

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @var string[]
     */
    protected static $setters = [
        'id' => 'setId',
        'title' => 'setTitle',
        'text' => 'setText',
        'summary' => 'setSummary',
        'url' => 'setUrl',
        'image' => 'setImage',
        'author' => 'setAuthor',
        'language' => 'setLanguage',
        'source_country' => 'setSourceCountry',
        'sentiment' => 'setSentiment'
    ];

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @var string[]
     */
    protected static $getters = [
        'id' => 'getId',
        'title' => 'getTitle',
        'text' => 'getText',
        'summary' => 'getSummary',
        'url' => 'getUrl',
        'image' => 'getImage',
        'author' => 'getAuthor',
        'language' => 'getLanguage',
        'source_country' => 'getSourceCountry',
        'sentiment' => 'getSentiment'
    ];

    /**
     * Array of attributes where the key is the local name,
     * and the value is the original name
     *
     * @return array
     */
    public static function attributeMap()
    {
        return self::$attributeMap;
    }

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @return array
     */
    public static function setters()
    {
        return self::$setters;
    }

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @return array
     */
    public static function getters()
    {
        return self::$getters;
    }

    /**
     * The original name of the model.
     *
     * @return string
     */
    public function getModelName()
    {
        return self::$openAPIModelName;
    }


    /**
     * Associative array for storing property values
     *
     * @var mixed[]
     */
    protected $container = [];

    /**
     * Constructor
     *
     * @param mixed[] $data Associated array of property values
     *                      initializing the model
     */
    public function __construct(array $data = null)
    {
        $this->container['id'] = $data['id'] ?? null;
        $this->container['title'] = $data['title'] ?? null;
        $this->container['text'] = $data['text'] ?? null;
        $this->container['summary'] = $data['summary'] ?? null;
        $this->container['url'] = $data['url'] ?? null;
        $this->container['image'] = $data['image'] ?? null;
        $this->container['author'] = $data['author'] ?? null;
        $this->container['language'] = $data['language'] ?? null;
        $this->container['source_country'] = $data['source_country'] ?? null;
        $this->container['sentiment'] = $data['sentiment'] ?? null;
    }

    /**
     * Show all the invalid properties with reasons.
     *
     * @return array invalid properties with reasons
     */
    public function listInvalidProperties()
    {
        $invalidProperties = [];

        return $invalidProperties;
    }

    /**
     * Validate all the properties in the model
     * return true if all passed
     *
     * @return bool True if all properties are valid
     */
    public function valid()
    {
        return count($this->listInvalidProperties()) === 0;
    }


    /**
     * Gets id
     *
     * @return int|null
     */
    public function getId()
    {
        return $this->container['id'];
    }

    /**
     * Sets id
     *
     * @param int|null $id id
     *
     * @return self
     */
    public function setId($id)
    {
        $this->container['id'] = $id;

        return $this;
    }

    /**
     * Gets title
     *
     * @return string|null
     */
    public function getTitle()
    {
        return $this->container['title'];
    }

    /**
     * Sets title
     *
     * @param string|null $title title
     *
     * @return self
     */
    public function setTitle($title)
    {
        $this->container['title'] = $title;

        return $this;
    }

    /**
     * Gets text
     *
     * @return string|null
     */
    public function getText()
    {
        return $this->container['text'];
    }

    /**
     * Sets text
     *
     * @param string|null $text text
     *
     * @return self
     */
    public function setText($text)
    {
        $this->container['text'] = $text;

        return $this;
    }

    /**
     * Gets summary
     *
     * @return string|null
     */
    public function getSummary()
    {
        return $this->container['summary'];
    }

    /**
     * Sets summary
     *
     * @param string|null $summary summary
     *
     * @return self
     */
    public function setSummary($summary)
    {
        $this->container['summary'] = $summary;

        return $this;
    }

    /**
     * Gets url
     *
     * @return string|null
     */
    public function getUrl()
    {
        return $this->container['url'];
    }

    /**
     * Sets url
     *
     * @param string|null $url url
     *
     * @return self
     */
    public function setUrl($url)
    {
        $this->container['url'] = $url;

        return $this;
    }

    /**
     * Gets image
     *
     * @return string|null
     */
    public function getImage()
    {
        return $this->container['image'];
    }

    /**
     * Sets image
     *
     * @param string|null $image image
     *
     * @return self
     */
    public function setImage($image)
    {
        $this->container['image'] = $image;

        return $this;
    }

    /**
     * Gets author
     *
     * @return string|null
     */
    public function getAuthor()
    {
        return $this->container['author'];
    }

    /**
     * Sets author
     *
     * @param string|null $author author
     *
     * @return self
     */
    public function setAuthor($author)
    {
        $this->container['author'] = $author;

        return $this;
    }

    /**
     * Gets language
     *
     * @return string|null
     */
    public function getLanguage()
    {
        return $this->container['language'];
    }

    /**
     * Sets language
     *
     * @param string|null $language language
     *
     * @return self
     */
    public function setLanguage($language)
    {
        $this->container['language'] = $language;

        return $this;
    }

    /**
     * Gets source_country
     *
     * @return string|null
     */
    public function getSourceCountry()
    {
        return $this->container['source_country'];
    }

    /**
     * Sets source_country
     *
     * @param string|null $source_country source_country
     *
     * @return self
     */
    public function setSourceCountry($source_country)
    {
        $this->container['source_country'] = $source_country;

        return $this;
    }

    /**
     * Gets sentiment
     *
     * @return float|null
     */
    public function getSentiment()
    {
        return $this->container['sentiment'];
    }

    /**
     * Sets sentiment
     *
     * @param float|null $sentiment sentiment
     *
     * @return self
     */
    public function setSentiment($sentiment)
    {
        $this->container['sentiment'] = $sentiment;

        return $this;
    }
    /**
     * Returns true if offset exists. False otherwise.
     *
     * @param integer $offset Offset
     *
     * @return boolean
     */
    public function offsetExists($offset)
    {
        return isset($this->container[$offset]);
    }

    /**
     * Gets offset.
     *
     * @param integer $offset Offset
     *
     * @return mixed|null
     */
    public function offsetGet($offset)
    {
        return $this->container[$offset] ?? null;
    }

    /**
     * Sets value based on offset.
     *
     * @param int|null $offset Offset
     * @param mixed    $value  Value to be set
     *
     * @return void
     */
    public function offsetSet($offset, $value)
    {
        if (is_null($offset)) {
            $this->container[] = $value;
        } else {
            $this->container[$offset] = $value;
        }
    }

    /**
     * Unsets offset.
     *
     * @param integer $offset Offset
     *
     * @return void
     */
    public function offsetUnset($offset)
    {
        unset($this->container[$offset]);
    }

    /**
     * Serializes the object to a value that can be serialized natively by json_encode().
     * @link https://www.php.net/manual/en/jsonserializable.jsonserialize.php
     *
     * @return mixed Returns data which can be serialized by json_encode(), which is a value
     * of any type other than a resource.
     */
    public function jsonSerialize()
    {
       return ObjectSerializer::sanitizeForSerialization($this);
    }

    /**
     * Gets the string presentation of the object
     *
     * @return string
     */
    public function __toString()
    {
        return json_encode(
            ObjectSerializer::sanitizeForSerialization($this),
            JSON_PRETTY_PRINT
        );
    }

    /**
     * Gets a header-safe presentation of the object
     *
     * @return string
     */
    public function toHeaderValue()
    {
        return json_encode(ObjectSerializer::sanitizeForSerialization($this));
    }
}


