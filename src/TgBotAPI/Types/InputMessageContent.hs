-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema InputMessageContent
module TgBotAPI.Types.InputMessageContent where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Functor
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified TgBotAPI.Common
import TgBotAPI.TypeAlias
import {-# SOURCE #-} TgBotAPI.Types.InputContactMessageContent
import {-# SOURCE #-} TgBotAPI.Types.InputInvoiceMessageContent
import {-# SOURCE #-} TgBotAPI.Types.InputLocationMessageContent
import {-# SOURCE #-} TgBotAPI.Types.InputTextMessageContent
import {-# SOURCE #-} TgBotAPI.Types.InputVenueMessageContent
import {-# SOURCE #-} TgBotAPI.Types.LabeledPrice
import {-# SOURCE #-} TgBotAPI.Types.MessageEntity

-- | Defines the object schema located at @components.schemas.InputMessageContent.anyOf@ in the specification.
-- 
-- This object represents the content of a message to be sent as a result of an inline query. Telegram clients currently support the following 5 types:
data InputMessageContent = InputMessageContent {
  -- | address: Address of the venue
  inputMessageContentAddress :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | currency: Three-letter ISO 4217 currency code, see [more on currencies](\/bots\/payments\#supported-currencies)
  , inputMessageContentCurrency :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | description: Product description, 1-255 characters
  , inputMessageContentDescription :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | disable_web_page_preview: *Optional*. Disables link previews for links in the sent message
  , inputMessageContentDisableWebPagePreview :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | entities: *Optional*. List of special entities that appear in message text, which can be specified instead of *parse\\_mode*
  , inputMessageContentEntities :: (GHC.Maybe.Maybe ([MessageEntity]))
  -- | first_name: Contact\'s first name
  , inputMessageContentFirstName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | foursquare_id: *Optional*. Foursquare identifier of the venue, if known
  , inputMessageContentFoursquareId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | foursquare_type: *Optional*. Foursquare type of the venue, if known. (For example, “arts\\_entertainment\/default”, “arts\\_entertainment\/aquarium” or “food\/icecream”.)
  , inputMessageContentFoursquareType :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | google_place_id: *Optional*. Google Places identifier of the venue
  , inputMessageContentGooglePlaceId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | google_place_type: *Optional*. Google Places type of the venue. (See [supported types](https:\/\/developers.google.com\/places\/web-service\/supported_types).)
  , inputMessageContentGooglePlaceType :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | heading: *Optional*. For live locations, a direction in which the user is moving, in degrees. Must be between 1 and 360 if specified.
  , inputMessageContentHeading :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | horizontal_accuracy: *Optional*. The radius of uncertainty for the location, measured in meters; 0-1500
  , inputMessageContentHorizontalAccuracy :: (GHC.Maybe.Maybe GHC.Types.Double)
  -- | is_flexible: *Optional*. Pass *True*, if the final price depends on the shipping method
  , inputMessageContentIsFlexible :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | last_name: *Optional*. Contact\'s last name
  , inputMessageContentLastName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | latitude: Latitude of the location in degrees
  , inputMessageContentLatitude :: (GHC.Maybe.Maybe GHC.Types.Double)
  -- | live_period: *Optional*. Period in seconds for which the location can be updated, should be between 60 and 86400.
  , inputMessageContentLivePeriod :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | longitude: Longitude of the location in degrees
  , inputMessageContentLongitude :: (GHC.Maybe.Maybe GHC.Types.Double)
  -- | max_tip_amount: *Optional*. The maximum accepted amount for tips in the *smallest units* of the currency (integer, **not** float\/double). For example, for a maximum tip of \`US\$ 1.45\` pass \`max_tip_amount = 145\`. See the *exp* parameter in [currencies.json](https:\/\/core.telegram.org\/bots\/payments\/currencies.json), it shows the number of digits past the decimal point for each currency (2 for the majority of currencies). Defaults to 0
  , inputMessageContentMaxTipAmount :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | message_text: Text of the message to be sent, 1-4096 characters
  , inputMessageContentMessageText :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | need_email: *Optional*. Pass *True*, if you require the user\'s email address to complete the order
  , inputMessageContentNeedEmail :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | need_name: *Optional*. Pass *True*, if you require the user\'s full name to complete the order
  , inputMessageContentNeedName :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | need_phone_number: *Optional*. Pass *True*, if you require the user\'s phone number to complete the order
  , inputMessageContentNeedPhoneNumber :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | need_shipping_address: *Optional*. Pass *True*, if you require the user\'s shipping address to complete the order
  , inputMessageContentNeedShippingAddress :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | parse_mode: *Optional*. Mode for parsing entities in the message text. See [formatting options](https:\/\/core.telegram.org\/bots\/api\/\#formatting-options) for more details.
  , inputMessageContentParseMode :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | payload: Bot-defined invoice payload, 1-128 bytes. This will not be displayed to the user, use for your internal processes.
  , inputMessageContentPayload :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | phone_number: Contact\'s phone number
  , inputMessageContentPhoneNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | photo_height: *Optional*. Photo height
  , inputMessageContentPhotoHeight :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | photo_size: *Optional*. Photo size
  , inputMessageContentPhotoSize :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | photo_url: *Optional*. URL of the product photo for the invoice. Can be a photo of the goods or a marketing image for a service. People like it better when they see what they are paying for.
  , inputMessageContentPhotoUrl :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | photo_width: *Optional*. Photo width
  , inputMessageContentPhotoWidth :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | prices: Price breakdown, a JSON-serialized list of components (e.g. product price, tax, discount, delivery cost, delivery tax, bonus, etc.)
  , inputMessageContentPrices :: (GHC.Maybe.Maybe ([LabeledPrice]))
  -- | provider_data: *Optional*. A JSON-serialized object for data about the invoice, which will be shared with the payment provider. A detailed description of the required fields should be provided by the payment provider.
  , inputMessageContentProviderData :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | provider_token: Payment provider token, obtained via [Botfather](https:\/\/t.me\/botfather)
  , inputMessageContentProviderToken :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | proximity_alert_radius: *Optional*. For live locations, a maximum distance for proximity alerts about approaching another chat member, in meters. Must be between 1 and 100000 if specified.
  , inputMessageContentProximityAlertRadius :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | send_email_to_provider: *Optional*. Pass *True*, if user\'s email address should be sent to provider
  , inputMessageContentSendEmailToProvider :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | send_phone_number_to_provider: *Optional*. Pass *True*, if user\'s phone number should be sent to provider
  , inputMessageContentSendPhoneNumberToProvider :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | suggested_tip_amounts: *Optional*. A JSON-serialized array of suggested amounts of tip in the *smallest units* of the currency (integer, **not** float\/double). At most 4 suggested tip amounts can be specified. The suggested tip amounts must be positive, passed in a strictly increased order and must not exceed *max\\_tip\\_amount*.
  , inputMessageContentSuggestedTipAmounts :: (GHC.Maybe.Maybe ([GHC.Types.Int]))
  -- | title: Name of the venue
  , inputMessageContentTitle :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | vcard: *Optional*. Additional data about the contact in the form of a [vCard](https:\/\/en.wikipedia.org\/wiki\/VCard), 0-2048 bytes
  , inputMessageContentVcard :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON InputMessageContent
    where toJSON obj = Data.Aeson.Types.Internal.object ("address" Data.Aeson.Types.ToJSON..= inputMessageContentAddress obj : "currency" Data.Aeson.Types.ToJSON..= inputMessageContentCurrency obj : "description" Data.Aeson.Types.ToJSON..= inputMessageContentDescription obj : "disable_web_page_preview" Data.Aeson.Types.ToJSON..= inputMessageContentDisableWebPagePreview obj : "entities" Data.Aeson.Types.ToJSON..= inputMessageContentEntities obj : "first_name" Data.Aeson.Types.ToJSON..= inputMessageContentFirstName obj : "foursquare_id" Data.Aeson.Types.ToJSON..= inputMessageContentFoursquareId obj : "foursquare_type" Data.Aeson.Types.ToJSON..= inputMessageContentFoursquareType obj : "google_place_id" Data.Aeson.Types.ToJSON..= inputMessageContentGooglePlaceId obj : "google_place_type" Data.Aeson.Types.ToJSON..= inputMessageContentGooglePlaceType obj : "heading" Data.Aeson.Types.ToJSON..= inputMessageContentHeading obj : "horizontal_accuracy" Data.Aeson.Types.ToJSON..= inputMessageContentHorizontalAccuracy obj : "is_flexible" Data.Aeson.Types.ToJSON..= inputMessageContentIsFlexible obj : "last_name" Data.Aeson.Types.ToJSON..= inputMessageContentLastName obj : "latitude" Data.Aeson.Types.ToJSON..= inputMessageContentLatitude obj : "live_period" Data.Aeson.Types.ToJSON..= inputMessageContentLivePeriod obj : "longitude" Data.Aeson.Types.ToJSON..= inputMessageContentLongitude obj : "max_tip_amount" Data.Aeson.Types.ToJSON..= inputMessageContentMaxTipAmount obj : "message_text" Data.Aeson.Types.ToJSON..= inputMessageContentMessageText obj : "need_email" Data.Aeson.Types.ToJSON..= inputMessageContentNeedEmail obj : "need_name" Data.Aeson.Types.ToJSON..= inputMessageContentNeedName obj : "need_phone_number" Data.Aeson.Types.ToJSON..= inputMessageContentNeedPhoneNumber obj : "need_shipping_address" Data.Aeson.Types.ToJSON..= inputMessageContentNeedShippingAddress obj : "parse_mode" Data.Aeson.Types.ToJSON..= inputMessageContentParseMode obj : "payload" Data.Aeson.Types.ToJSON..= inputMessageContentPayload obj : "phone_number" Data.Aeson.Types.ToJSON..= inputMessageContentPhoneNumber obj : "photo_height" Data.Aeson.Types.ToJSON..= inputMessageContentPhotoHeight obj : "photo_size" Data.Aeson.Types.ToJSON..= inputMessageContentPhotoSize obj : "photo_url" Data.Aeson.Types.ToJSON..= inputMessageContentPhotoUrl obj : "photo_width" Data.Aeson.Types.ToJSON..= inputMessageContentPhotoWidth obj : "prices" Data.Aeson.Types.ToJSON..= inputMessageContentPrices obj : "provider_data" Data.Aeson.Types.ToJSON..= inputMessageContentProviderData obj : "provider_token" Data.Aeson.Types.ToJSON..= inputMessageContentProviderToken obj : "proximity_alert_radius" Data.Aeson.Types.ToJSON..= inputMessageContentProximityAlertRadius obj : "send_email_to_provider" Data.Aeson.Types.ToJSON..= inputMessageContentSendEmailToProvider obj : "send_phone_number_to_provider" Data.Aeson.Types.ToJSON..= inputMessageContentSendPhoneNumberToProvider obj : "suggested_tip_amounts" Data.Aeson.Types.ToJSON..= inputMessageContentSuggestedTipAmounts obj : "title" Data.Aeson.Types.ToJSON..= inputMessageContentTitle obj : "vcard" Data.Aeson.Types.ToJSON..= inputMessageContentVcard obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("address" Data.Aeson.Types.ToJSON..= inputMessageContentAddress obj) GHC.Base.<> (("currency" Data.Aeson.Types.ToJSON..= inputMessageContentCurrency obj) GHC.Base.<> (("description" Data.Aeson.Types.ToJSON..= inputMessageContentDescription obj) GHC.Base.<> (("disable_web_page_preview" Data.Aeson.Types.ToJSON..= inputMessageContentDisableWebPagePreview obj) GHC.Base.<> (("entities" Data.Aeson.Types.ToJSON..= inputMessageContentEntities obj) GHC.Base.<> (("first_name" Data.Aeson.Types.ToJSON..= inputMessageContentFirstName obj) GHC.Base.<> (("foursquare_id" Data.Aeson.Types.ToJSON..= inputMessageContentFoursquareId obj) GHC.Base.<> (("foursquare_type" Data.Aeson.Types.ToJSON..= inputMessageContentFoursquareType obj) GHC.Base.<> (("google_place_id" Data.Aeson.Types.ToJSON..= inputMessageContentGooglePlaceId obj) GHC.Base.<> (("google_place_type" Data.Aeson.Types.ToJSON..= inputMessageContentGooglePlaceType obj) GHC.Base.<> (("heading" Data.Aeson.Types.ToJSON..= inputMessageContentHeading obj) GHC.Base.<> (("horizontal_accuracy" Data.Aeson.Types.ToJSON..= inputMessageContentHorizontalAccuracy obj) GHC.Base.<> (("is_flexible" Data.Aeson.Types.ToJSON..= inputMessageContentIsFlexible obj) GHC.Base.<> (("last_name" Data.Aeson.Types.ToJSON..= inputMessageContentLastName obj) GHC.Base.<> (("latitude" Data.Aeson.Types.ToJSON..= inputMessageContentLatitude obj) GHC.Base.<> (("live_period" Data.Aeson.Types.ToJSON..= inputMessageContentLivePeriod obj) GHC.Base.<> (("longitude" Data.Aeson.Types.ToJSON..= inputMessageContentLongitude obj) GHC.Base.<> (("max_tip_amount" Data.Aeson.Types.ToJSON..= inputMessageContentMaxTipAmount obj) GHC.Base.<> (("message_text" Data.Aeson.Types.ToJSON..= inputMessageContentMessageText obj) GHC.Base.<> (("need_email" Data.Aeson.Types.ToJSON..= inputMessageContentNeedEmail obj) GHC.Base.<> (("need_name" Data.Aeson.Types.ToJSON..= inputMessageContentNeedName obj) GHC.Base.<> (("need_phone_number" Data.Aeson.Types.ToJSON..= inputMessageContentNeedPhoneNumber obj) GHC.Base.<> (("need_shipping_address" Data.Aeson.Types.ToJSON..= inputMessageContentNeedShippingAddress obj) GHC.Base.<> (("parse_mode" Data.Aeson.Types.ToJSON..= inputMessageContentParseMode obj) GHC.Base.<> (("payload" Data.Aeson.Types.ToJSON..= inputMessageContentPayload obj) GHC.Base.<> (("phone_number" Data.Aeson.Types.ToJSON..= inputMessageContentPhoneNumber obj) GHC.Base.<> (("photo_height" Data.Aeson.Types.ToJSON..= inputMessageContentPhotoHeight obj) GHC.Base.<> (("photo_size" Data.Aeson.Types.ToJSON..= inputMessageContentPhotoSize obj) GHC.Base.<> (("photo_url" Data.Aeson.Types.ToJSON..= inputMessageContentPhotoUrl obj) GHC.Base.<> (("photo_width" Data.Aeson.Types.ToJSON..= inputMessageContentPhotoWidth obj) GHC.Base.<> (("prices" Data.Aeson.Types.ToJSON..= inputMessageContentPrices obj) GHC.Base.<> (("provider_data" Data.Aeson.Types.ToJSON..= inputMessageContentProviderData obj) GHC.Base.<> (("provider_token" Data.Aeson.Types.ToJSON..= inputMessageContentProviderToken obj) GHC.Base.<> (("proximity_alert_radius" Data.Aeson.Types.ToJSON..= inputMessageContentProximityAlertRadius obj) GHC.Base.<> (("send_email_to_provider" Data.Aeson.Types.ToJSON..= inputMessageContentSendEmailToProvider obj) GHC.Base.<> (("send_phone_number_to_provider" Data.Aeson.Types.ToJSON..= inputMessageContentSendPhoneNumberToProvider obj) GHC.Base.<> (("suggested_tip_amounts" Data.Aeson.Types.ToJSON..= inputMessageContentSuggestedTipAmounts obj) GHC.Base.<> (("title" Data.Aeson.Types.ToJSON..= inputMessageContentTitle obj) GHC.Base.<> ("vcard" Data.Aeson.Types.ToJSON..= inputMessageContentVcard obj)))))))))))))))))))))))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON InputMessageContent
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "InputMessageContent" (\obj -> ((((((((((((((((((((((((((((((((((((((GHC.Base.pure InputMessageContent GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "disable_web_page_preview")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "entities")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "foursquare_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "foursquare_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "google_place_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "google_place_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "heading")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "horizontal_accuracy")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "is_flexible")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "latitude")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "live_period")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "longitude")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "max_tip_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "message_text")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "need_email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "need_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "need_phone_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "need_shipping_address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "parse_mode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payload")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "photo_height")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "photo_size")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "photo_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "photo_width")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "prices")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "provider_data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "provider_token")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "proximity_alert_radius")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "send_email_to_provider")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "send_phone_number_to_provider")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "suggested_tip_amounts")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "title")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "vcard"))
-- | Create a new 'InputMessageContent' with all required fields.
mkInputMessageContent :: InputMessageContent
mkInputMessageContent = InputMessageContent{inputMessageContentAddress = GHC.Maybe.Nothing,
                                            inputMessageContentCurrency = GHC.Maybe.Nothing,
                                            inputMessageContentDescription = GHC.Maybe.Nothing,
                                            inputMessageContentDisableWebPagePreview = GHC.Maybe.Nothing,
                                            inputMessageContentEntities = GHC.Maybe.Nothing,
                                            inputMessageContentFirstName = GHC.Maybe.Nothing,
                                            inputMessageContentFoursquareId = GHC.Maybe.Nothing,
                                            inputMessageContentFoursquareType = GHC.Maybe.Nothing,
                                            inputMessageContentGooglePlaceId = GHC.Maybe.Nothing,
                                            inputMessageContentGooglePlaceType = GHC.Maybe.Nothing,
                                            inputMessageContentHeading = GHC.Maybe.Nothing,
                                            inputMessageContentHorizontalAccuracy = GHC.Maybe.Nothing,
                                            inputMessageContentIsFlexible = GHC.Maybe.Nothing,
                                            inputMessageContentLastName = GHC.Maybe.Nothing,
                                            inputMessageContentLatitude = GHC.Maybe.Nothing,
                                            inputMessageContentLivePeriod = GHC.Maybe.Nothing,
                                            inputMessageContentLongitude = GHC.Maybe.Nothing,
                                            inputMessageContentMaxTipAmount = GHC.Maybe.Nothing,
                                            inputMessageContentMessageText = GHC.Maybe.Nothing,
                                            inputMessageContentNeedEmail = GHC.Maybe.Nothing,
                                            inputMessageContentNeedName = GHC.Maybe.Nothing,
                                            inputMessageContentNeedPhoneNumber = GHC.Maybe.Nothing,
                                            inputMessageContentNeedShippingAddress = GHC.Maybe.Nothing,
                                            inputMessageContentParseMode = GHC.Maybe.Nothing,
                                            inputMessageContentPayload = GHC.Maybe.Nothing,
                                            inputMessageContentPhoneNumber = GHC.Maybe.Nothing,
                                            inputMessageContentPhotoHeight = GHC.Maybe.Nothing,
                                            inputMessageContentPhotoSize = GHC.Maybe.Nothing,
                                            inputMessageContentPhotoUrl = GHC.Maybe.Nothing,
                                            inputMessageContentPhotoWidth = GHC.Maybe.Nothing,
                                            inputMessageContentPrices = GHC.Maybe.Nothing,
                                            inputMessageContentProviderData = GHC.Maybe.Nothing,
                                            inputMessageContentProviderToken = GHC.Maybe.Nothing,
                                            inputMessageContentProximityAlertRadius = GHC.Maybe.Nothing,
                                            inputMessageContentSendEmailToProvider = GHC.Maybe.Nothing,
                                            inputMessageContentSendPhoneNumberToProvider = GHC.Maybe.Nothing,
                                            inputMessageContentSuggestedTipAmounts = GHC.Maybe.Nothing,
                                            inputMessageContentTitle = GHC.Maybe.Nothing,
                                            inputMessageContentVcard = GHC.Maybe.Nothing}