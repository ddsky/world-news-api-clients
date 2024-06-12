<?php
/**
 * RetrieveNewsArticlesByIds200ResponseNewsInner
 *
 * PHP version 7.4
 *
 * @category Class
 * @package  OpenAPI\Client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 */

/**
 * World News API
 *
 * The world's news wrapped into a single API.
 *
 * The version of the OpenAPI document: 1.2.0
 * Contact: mail@worldnewsapi.com
 * Generated by: https://openapi-generator.tech
 * Generator version: 7.5.0
 */

/**
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

namespace OpenAPI\Client\Model;

use \ArrayAccess;
use \OpenAPI\Client\ObjectSerializer;

/**
 * RetrieveNewsArticlesByIds200ResponseNewsInner Class Doc Comment
 *
 * @category Class
 * @package  OpenAPI\Client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 * @implements \ArrayAccess<string, mixed>
 */
class RetrieveNewsArticlesByIds200ResponseNewsInner implements ModelInterface, ArrayAccess, \JsonSerializable
{
    public const DISCRIMINATOR = null;

    /**
      * The original name of the model.
      *
      * @var string
      */
    protected static $openAPIModelName = 'retrieveNewsArticlesByIds_200_response_news_inner';

    /**
      * Array of property to type mappings. Used for (de)serialization
      *
      * @var string[]
      */
    protected static $openAPITypes = [
        'summary' => 'string',
        'image' => 'string',
        'sentiment' => 'float',
        'catgory' => 'string',
        'language' => 'string',
        'title' => 'string',
        'url' => 'string',
        'source_country' => 'string',
        'id' => 'int',
        'text' => 'string',
        'publish_date' => 'string',
        'authors' => 'string[]'
    ];

    /**
      * Array of property to format mappings. Used for (de)serialization
      *
      * @var string[]
      * @phpstan-var array<string, string|null>
      * @psalm-var array<string, string|null>
      */
    protected static $openAPIFormats = [
        'summary' => null,
        'image' => null,
        'sentiment' => null,
        'catgory' => null,
        'language' => null,
        'title' => null,
        'url' => null,
        'source_country' => null,
        'id' => null,
        'text' => null,
        'publish_date' => null,
        'authors' => null
    ];

    /**
      * Array of nullable properties. Used for (de)serialization
      *
      * @var boolean[]
      */
    protected static array $openAPINullables = [
        'summary' => true,
        'image' => true,
        'sentiment' => false,
        'catgory' => true,
        'language' => true,
        'title' => true,
        'url' => true,
        'source_country' => true,
        'id' => false,
        'text' => true,
        'publish_date' => true,
        'authors' => false
    ];

    /**
      * If a nullable field gets set to null, insert it here
      *
      * @var boolean[]
      */
    protected array $openAPINullablesSetToNull = [];

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
     * Array of nullable properties
     *
     * @return array
     */
    protected static function openAPINullables(): array
    {
        return self::$openAPINullables;
    }

    /**
     * Array of nullable field names deliberately set to null
     *
     * @return boolean[]
     */
    private function getOpenAPINullablesSetToNull(): array
    {
        return $this->openAPINullablesSetToNull;
    }

    /**
     * Setter - Array of nullable field names deliberately set to null
     *
     * @param boolean[] $openAPINullablesSetToNull
     */
    private function setOpenAPINullablesSetToNull(array $openAPINullablesSetToNull): void
    {
        $this->openAPINullablesSetToNull = $openAPINullablesSetToNull;
    }

    /**
     * Checks if a property is nullable
     *
     * @param string $property
     * @return bool
     */
    public static function isNullable(string $property): bool
    {
        return self::openAPINullables()[$property] ?? false;
    }

    /**
     * Checks if a nullable property is set to null.
     *
     * @param string $property
     * @return bool
     */
    public function isNullableSetToNull(string $property): bool
    {
        return in_array($property, $this->getOpenAPINullablesSetToNull(), true);
    }

    /**
     * Array of attributes where the key is the local name,
     * and the value is the original name
     *
     * @var string[]
     */
    protected static $attributeMap = [
        'summary' => 'summary',
        'image' => 'image',
        'sentiment' => 'sentiment',
        'catgory' => 'catgory',
        'language' => 'language',
        'title' => 'title',
        'url' => 'url',
        'source_country' => 'source_country',
        'id' => 'id',
        'text' => 'text',
        'publish_date' => 'publish_date',
        'authors' => 'authors'
    ];

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @var string[]
     */
    protected static $setters = [
        'summary' => 'setSummary',
        'image' => 'setImage',
        'sentiment' => 'setSentiment',
        'catgory' => 'setCatgory',
        'language' => 'setLanguage',
        'title' => 'setTitle',
        'url' => 'setUrl',
        'source_country' => 'setSourceCountry',
        'id' => 'setId',
        'text' => 'setText',
        'publish_date' => 'setPublishDate',
        'authors' => 'setAuthors'
    ];

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @var string[]
     */
    protected static $getters = [
        'summary' => 'getSummary',
        'image' => 'getImage',
        'sentiment' => 'getSentiment',
        'catgory' => 'getCatgory',
        'language' => 'getLanguage',
        'title' => 'getTitle',
        'url' => 'getUrl',
        'source_country' => 'getSourceCountry',
        'id' => 'getId',
        'text' => 'getText',
        'publish_date' => 'getPublishDate',
        'authors' => 'getAuthors'
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
        $this->setIfExists('summary', $data ?? [], null);
        $this->setIfExists('image', $data ?? [], null);
        $this->setIfExists('sentiment', $data ?? [], null);
        $this->setIfExists('catgory', $data ?? [], null);
        $this->setIfExists('language', $data ?? [], null);
        $this->setIfExists('title', $data ?? [], null);
        $this->setIfExists('url', $data ?? [], null);
        $this->setIfExists('source_country', $data ?? [], null);
        $this->setIfExists('id', $data ?? [], null);
        $this->setIfExists('text', $data ?? [], null);
        $this->setIfExists('publish_date', $data ?? [], null);
        $this->setIfExists('authors', $data ?? [], null);
    }

    /**
    * Sets $this->container[$variableName] to the given data or to the given default Value; if $variableName
    * is nullable and its value is set to null in the $fields array, then mark it as "set to null" in the
    * $this->openAPINullablesSetToNull array
    *
    * @param string $variableName
    * @param array  $fields
    * @param mixed  $defaultValue
    */
    private function setIfExists(string $variableName, array $fields, $defaultValue): void
    {
        if (self::isNullable($variableName) && array_key_exists($variableName, $fields) && is_null($fields[$variableName])) {
            $this->openAPINullablesSetToNull[] = $variableName;
        }

        $this->container[$variableName] = $fields[$variableName] ?? $defaultValue;
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
        if (is_null($summary)) {
            array_push($this->openAPINullablesSetToNull, 'summary');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('summary', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }
        $this->container['summary'] = $summary;

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
        if (is_null($image)) {
            array_push($this->openAPINullablesSetToNull, 'image');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('image', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }
        $this->container['image'] = $image;

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
        if (is_null($sentiment)) {
            throw new \InvalidArgumentException('non-nullable sentiment cannot be null');
        }
        $this->container['sentiment'] = $sentiment;

        return $this;
    }

    /**
     * Gets catgory
     *
     * @return string|null
     */
    public function getCatgory()
    {
        return $this->container['catgory'];
    }

    /**
     * Sets catgory
     *
     * @param string|null $catgory catgory
     *
     * @return self
     */
    public function setCatgory($catgory)
    {
        if (is_null($catgory)) {
            array_push($this->openAPINullablesSetToNull, 'catgory');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('catgory', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }
        $this->container['catgory'] = $catgory;

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
        if (is_null($language)) {
            array_push($this->openAPINullablesSetToNull, 'language');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('language', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }
        $this->container['language'] = $language;

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
        if (is_null($title)) {
            array_push($this->openAPINullablesSetToNull, 'title');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('title', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }
        $this->container['title'] = $title;

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
        if (is_null($url)) {
            array_push($this->openAPINullablesSetToNull, 'url');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('url', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }
        $this->container['url'] = $url;

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
        if (is_null($source_country)) {
            array_push($this->openAPINullablesSetToNull, 'source_country');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('source_country', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }
        $this->container['source_country'] = $source_country;

        return $this;
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
        if (is_null($id)) {
            throw new \InvalidArgumentException('non-nullable id cannot be null');
        }
        $this->container['id'] = $id;

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
        if (is_null($text)) {
            array_push($this->openAPINullablesSetToNull, 'text');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('text', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }
        $this->container['text'] = $text;

        return $this;
    }

    /**
     * Gets publish_date
     *
     * @return string|null
     */
    public function getPublishDate()
    {
        return $this->container['publish_date'];
    }

    /**
     * Sets publish_date
     *
     * @param string|null $publish_date publish_date
     *
     * @return self
     */
    public function setPublishDate($publish_date)
    {
        if (is_null($publish_date)) {
            array_push($this->openAPINullablesSetToNull, 'publish_date');
        } else {
            $nullablesSetToNull = $this->getOpenAPINullablesSetToNull();
            $index = array_search('publish_date', $nullablesSetToNull);
            if ($index !== FALSE) {
                unset($nullablesSetToNull[$index]);
                $this->setOpenAPINullablesSetToNull($nullablesSetToNull);
            }
        }
        $this->container['publish_date'] = $publish_date;

        return $this;
    }

    /**
     * Gets authors
     *
     * @return string[]|null
     */
    public function getAuthors()
    {
        return $this->container['authors'];
    }

    /**
     * Sets authors
     *
     * @param string[]|null $authors authors
     *
     * @return self
     */
    public function setAuthors($authors)
    {
        if (is_null($authors)) {
            throw new \InvalidArgumentException('non-nullable authors cannot be null');
        }
        $this->container['authors'] = $authors;

        return $this;
    }
    /**
     * Returns true if offset exists. False otherwise.
     *
     * @param integer $offset Offset
     *
     * @return boolean
     */
    public function offsetExists($offset): bool
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
    #[\ReturnTypeWillChange]
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
    public function offsetSet($offset, $value): void
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
    public function offsetUnset($offset): void
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
    #[\ReturnTypeWillChange]
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


