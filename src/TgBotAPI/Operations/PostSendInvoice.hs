-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DuplicateRecordFields #-}

-- | Contains the different functions to run the operation postSendInvoice
module TgBotAPI.Operations.PostSendInvoice where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Fail
import qualified Control.Monad.Trans.Reader
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Either
import qualified Data.Functor
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified Data.Vector
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified Network.HTTP.Client
import qualified Network.HTTP.Client as Network.HTTP.Client.Request
import qualified Network.HTTP.Client as Network.HTTP.Client.Types
import qualified Network.HTTP.Simple
import qualified Network.HTTP.Types
import qualified Network.HTTP.Types as Network.HTTP.Types.Status
import qualified Network.HTTP.Types as Network.HTTP.Types.URI
import qualified TgBotAPI.Common
import TgBotAPI.Types

-- | > POST /sendInvoice
-- 
-- Use this method to send invoices. On success, the sent [Message](https:\/\/core.telegram.org\/bots\/api\/\#message) is returned.
postSendInvoice :: forall m . TgBotAPI.Common.MonadHTTP m => PostSendInvoiceRequestBody -- ^ The request body to send
  -> TgBotAPI.Common.StripeT m (Network.HTTP.Client.Types.Response PostSendInvoiceResponse) -- ^ Monadic computation which returns the result of the operation
postSendInvoice body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostSendInvoiceResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostSendInvoiceResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                PostSendInvoiceResponseBody200)
                                                                                                                                                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostSendInvoiceResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                  Error)
                                                                                                                                                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (TgBotAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/sendInvoice") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/sendInvoice.POST.requestBody.content.application\/json.schema@ in the specification.
-- 
-- 
data PostSendInvoiceRequestBody = PostSendInvoiceRequestBody {
  -- | allow_sending_without_reply: Pass *True*, if the message should be sent even if the specified replied-to message is not found
  allowSendingWithoutReply :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | chat_id: Unique identifier for the target chat or username of the target channel (in the format \`\@channelusername\`)
  , chatId :: ChatIdVariants
  -- | currency: Three-letter ISO 4217 currency code, see [more on currencies](\/bots\/payments\#supported-currencies)
  , currency :: Data.Text.Internal.Text
  -- | description: Product description, 1-255 characters
  , description :: Data.Text.Internal.Text
  -- | disable_notification: Sends the message [silently](https:\/\/telegram.org\/blog\/channels-2-0\#silent-messages). Users will receive a notification with no sound.
  , disableNotification :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | is_flexible: Pass *True*, if the final price depends on the shipping method
  , isFlexible :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | max_tip_amount: The maximum accepted amount for tips in the *smallest units* of the currency (integer, **not** float\/double). For example, for a maximum tip of \`US\$ 1.45\` pass \`max_tip_amount = 145\`. See the *exp* parameter in [currencies.json](https:\/\/core.telegram.org\/bots\/payments\/currencies.json), it shows the number of digits past the decimal point for each currency (2 for the majority of currencies). Defaults to 0
  , maxTipAmount :: (GHC.Maybe.Maybe GHC.Int.Int64)
  -- | need_email: Pass *True*, if you require the user\'s email address to complete the order
  , needEmail :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | need_name: Pass *True*, if you require the user\'s full name to complete the order
  , needName :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | need_phone_number: Pass *True*, if you require the user\'s phone number to complete the order
  , needPhoneNumber :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | need_shipping_address: Pass *True*, if you require the user\'s shipping address to complete the order
  , needShippingAddress :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | payload: Bot-defined invoice payload, 1-128 bytes. This will not be displayed to the user, use for your internal processes.
  , payload :: Data.Text.Internal.Text
  -- | photo_height: Photo height
  , photoHeight :: (GHC.Maybe.Maybe GHC.Int.Int64)
  -- | photo_size: Photo size
  , photoSize :: (GHC.Maybe.Maybe GHC.Int.Int64)
  -- | photo_url: URL of the product photo for the invoice. Can be a photo of the goods or a marketing image for a service. People like it better when they see what they are paying for.
  , photoUrl :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | photo_width: Photo width
  , photoWidth :: (GHC.Maybe.Maybe GHC.Int.Int64)
  -- | prices: Price breakdown, a JSON-serialized list of components (e.g. product price, tax, discount, delivery cost, delivery tax, bonus, etc.)
  , prices :: ([LabeledPrice])
  -- | provider_data: A JSON-serialized data about the invoice, which will be shared with the payment provider. A detailed description of required fields should be provided by the payment provider.
  , providerData :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | provider_token: Payments provider token, obtained via [Botfather](https:\/\/t.me\/botfather)
  , providerToken :: Data.Text.Internal.Text
  -- | reply_markup: This object represents an [inline keyboard](https:\/\/core.telegram.org\/bots\#inline-keyboards-and-on-the-fly-updating) that appears right next to the message it belongs to.
  , replyMarkup :: (GHC.Maybe.Maybe InlineKeyboardMarkup)
  -- | reply_to_message_id: If the message is a reply, ID of the original message
  , replyToMessageId :: (GHC.Maybe.Maybe GHC.Int.Int64)
  -- | send_email_to_provider: Pass *True*, if user\'s email address should be sent to provider
  , sendEmailToProvider :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | send_phone_number_to_provider: Pass *True*, if user\'s phone number should be sent to provider
  , sendPhoneNumberToProvider :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | start_parameter: Unique deep-linking parameter. If left empty, **forwarded copies** of the sent message will have a *Pay* button, allowing multiple users to pay directly from the forwarded message, using the same invoice. If non-empty, forwarded copies of the sent message will have a *URL* button with a deep link to the bot (instead of a *Pay* button), with the value used as the start parameter
  , startParameter :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | suggested_tip_amounts: A JSON-serialized array of suggested amounts of tips in the *smallest units* of the currency (integer, **not** float\/double). At most 4 suggested tip amounts can be specified. The suggested tip amounts must be positive, passed in a strictly increased order and must not exceed *max\\_tip\\_amount*.
  , suggestedTipAmounts :: (GHC.Maybe.Maybe ([GHC.Int.Int64]))
  -- | title: Product name, 1-32 characters
  , title :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostSendInvoiceRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object ("allow_sending_without_reply" Data.Aeson.Types.ToJSON..= allowSendingWithoutReply obj : "chat_id" Data.Aeson.Types.ToJSON..= chatId obj : "currency" Data.Aeson.Types.ToJSON..= currency obj : "description" Data.Aeson.Types.ToJSON..= description obj : "disable_notification" Data.Aeson.Types.ToJSON..= disableNotification obj : "is_flexible" Data.Aeson.Types.ToJSON..= isFlexible obj : "max_tip_amount" Data.Aeson.Types.ToJSON..= maxTipAmount obj : "need_email" Data.Aeson.Types.ToJSON..= needEmail obj : "need_name" Data.Aeson.Types.ToJSON..= needName obj : "need_phone_number" Data.Aeson.Types.ToJSON..= needPhoneNumber obj : "need_shipping_address" Data.Aeson.Types.ToJSON..= needShippingAddress obj : "payload" Data.Aeson.Types.ToJSON..= payload obj : "photo_height" Data.Aeson.Types.ToJSON..= photoHeight obj : "photo_size" Data.Aeson.Types.ToJSON..= photoSize obj : "photo_url" Data.Aeson.Types.ToJSON..= photoUrl obj : "photo_width" Data.Aeson.Types.ToJSON..= photoWidth obj : "prices" Data.Aeson.Types.ToJSON..= prices obj : "provider_data" Data.Aeson.Types.ToJSON..= providerData obj : "provider_token" Data.Aeson.Types.ToJSON..= providerToken obj : "reply_markup" Data.Aeson.Types.ToJSON..= replyMarkup obj : "reply_to_message_id" Data.Aeson.Types.ToJSON..= replyToMessageId obj : "send_email_to_provider" Data.Aeson.Types.ToJSON..= sendEmailToProvider obj : "send_phone_number_to_provider" Data.Aeson.Types.ToJSON..= sendPhoneNumberToProvider obj : "start_parameter" Data.Aeson.Types.ToJSON..= startParameter obj : "suggested_tip_amounts" Data.Aeson.Types.ToJSON..= suggestedTipAmounts obj : "title" Data.Aeson.Types.ToJSON..= title obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("allow_sending_without_reply" Data.Aeson.Types.ToJSON..= allowSendingWithoutReply obj) GHC.Base.<> (("chat_id" Data.Aeson.Types.ToJSON..= chatId obj) GHC.Base.<> (("currency" Data.Aeson.Types.ToJSON..= currency obj) GHC.Base.<> (("description" Data.Aeson.Types.ToJSON..= description obj) GHC.Base.<> (("disable_notification" Data.Aeson.Types.ToJSON..= disableNotification obj) GHC.Base.<> (("is_flexible" Data.Aeson.Types.ToJSON..= isFlexible obj) GHC.Base.<> (("max_tip_amount" Data.Aeson.Types.ToJSON..= maxTipAmount obj) GHC.Base.<> (("need_email" Data.Aeson.Types.ToJSON..= needEmail obj) GHC.Base.<> (("need_name" Data.Aeson.Types.ToJSON..= needName obj) GHC.Base.<> (("need_phone_number" Data.Aeson.Types.ToJSON..= needPhoneNumber obj) GHC.Base.<> (("need_shipping_address" Data.Aeson.Types.ToJSON..= needShippingAddress obj) GHC.Base.<> (("payload" Data.Aeson.Types.ToJSON..= payload obj) GHC.Base.<> (("photo_height" Data.Aeson.Types.ToJSON..= photoHeight obj) GHC.Base.<> (("photo_size" Data.Aeson.Types.ToJSON..= photoSize obj) GHC.Base.<> (("photo_url" Data.Aeson.Types.ToJSON..= photoUrl obj) GHC.Base.<> (("photo_width" Data.Aeson.Types.ToJSON..= photoWidth obj) GHC.Base.<> (("prices" Data.Aeson.Types.ToJSON..= prices obj) GHC.Base.<> (("provider_data" Data.Aeson.Types.ToJSON..= providerData obj) GHC.Base.<> (("provider_token" Data.Aeson.Types.ToJSON..= providerToken obj) GHC.Base.<> (("reply_markup" Data.Aeson.Types.ToJSON..= replyMarkup obj) GHC.Base.<> (("reply_to_message_id" Data.Aeson.Types.ToJSON..= replyToMessageId obj) GHC.Base.<> (("send_email_to_provider" Data.Aeson.Types.ToJSON..= sendEmailToProvider obj) GHC.Base.<> (("send_phone_number_to_provider" Data.Aeson.Types.ToJSON..= sendPhoneNumberToProvider obj) GHC.Base.<> (("start_parameter" Data.Aeson.Types.ToJSON..= startParameter obj) GHC.Base.<> (("suggested_tip_amounts" Data.Aeson.Types.ToJSON..= suggestedTipAmounts obj) GHC.Base.<> ("title" Data.Aeson.Types.ToJSON..= title obj))))))))))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostSendInvoiceRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSendInvoiceRequestBody" (\obj -> (((((((((((((((((((((((((GHC.Base.pure PostSendInvoiceRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "allow_sending_without_reply")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "chat_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "disable_notification")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "is_flexible")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "max_tip_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "need_email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "need_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "need_phone_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "need_shipping_address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "payload")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "photo_height")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "photo_size")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "photo_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "photo_width")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "prices")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "provider_data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "provider_token")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reply_markup")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reply_to_message_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "send_email_to_provider")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "send_phone_number_to_provider")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "start_parameter")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "suggested_tip_amounts")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "title"))
-- | Create a new 'PostSendInvoiceRequestBody' with all required fields.
mkPostSendInvoiceRequestBody :: ChatIdVariants -- ^ 'chatId'
  -> Data.Text.Internal.Text -- ^ 'currency'
  -> Data.Text.Internal.Text -- ^ 'description'
  -> Data.Text.Internal.Text -- ^ 'payload'
  -> [LabeledPrice] -- ^ 'prices'
  -> Data.Text.Internal.Text -- ^ 'providerToken'
  -> Data.Text.Internal.Text -- ^ 'title'
  -> PostSendInvoiceRequestBody
mkPostSendInvoiceRequestBody chatId currency description payload prices providerToken title = PostSendInvoiceRequestBody{allowSendingWithoutReply = GHC.Maybe.Nothing,
                                                                                                                         chatId = chatId,
                                                                                                                         currency = currency,
                                                                                                                         description = description,
                                                                                                                         disableNotification = GHC.Maybe.Nothing,
                                                                                                                         isFlexible = GHC.Maybe.Nothing,
                                                                                                                         maxTipAmount = GHC.Maybe.Nothing,
                                                                                                                         needEmail = GHC.Maybe.Nothing,
                                                                                                                         needName = GHC.Maybe.Nothing,
                                                                                                                         needPhoneNumber = GHC.Maybe.Nothing,
                                                                                                                         needShippingAddress = GHC.Maybe.Nothing,
                                                                                                                         payload = payload,
                                                                                                                         photoHeight = GHC.Maybe.Nothing,
                                                                                                                         photoSize = GHC.Maybe.Nothing,
                                                                                                                         photoUrl = GHC.Maybe.Nothing,
                                                                                                                         photoWidth = GHC.Maybe.Nothing,
                                                                                                                         prices = prices,
                                                                                                                         providerData = GHC.Maybe.Nothing,
                                                                                                                         providerToken = providerToken,
                                                                                                                         replyMarkup = GHC.Maybe.Nothing,
                                                                                                                         replyToMessageId = GHC.Maybe.Nothing,
                                                                                                                         sendEmailToProvider = GHC.Maybe.Nothing,
                                                                                                                         sendPhoneNumberToProvider = GHC.Maybe.Nothing,
                                                                                                                         startParameter = GHC.Maybe.Nothing,
                                                                                                                         suggestedTipAmounts = GHC.Maybe.Nothing,
                                                                                                                         title = title}
-- | Defines the oneOf schema located at @paths.\/sendInvoice.POST.requestBody.content.application\/json.schema.properties.chat_id.anyOf@ in the specification.
-- 
-- Unique identifier for the target chat or username of the target channel (in the format \`\@channelusername\`)
data ChatIdVariants =
   ChatIdInt GHC.Int.Int64
  | ChatIdText Data.Text.Internal.Text
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ChatIdVariants
    where toJSON (ChatIdInt a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (ChatIdText a) = Data.Aeson.Types.ToJSON.toJSON a
instance Data.Aeson.Types.FromJSON.FromJSON ChatIdVariants
    where parseJSON val = case (ChatIdInt Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((ChatIdText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                              Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
                              Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
-- | Represents a response of the operation 'postSendInvoice'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostSendInvoiceResponseError' is used.
data PostSendInvoiceResponse =
   PostSendInvoiceResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostSendInvoiceResponse200 PostSendInvoiceResponseBody200 -- ^ 
  | PostSendInvoiceResponseDefault Error -- ^ 
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/sendInvoice.POST.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data PostSendInvoiceResponseBody200 = PostSendInvoiceResponseBody200 {
  -- | ok
  ok :: GHC.Types.Bool
  -- | result: This object represents a message.
  , result :: Message
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostSendInvoiceResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("ok" Data.Aeson.Types.ToJSON..= ok obj : "result" Data.Aeson.Types.ToJSON..= result obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("ok" Data.Aeson.Types.ToJSON..= ok obj) GHC.Base.<> ("result" Data.Aeson.Types.ToJSON..= result obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSendInvoiceResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSendInvoiceResponseBody200" (\obj -> (GHC.Base.pure PostSendInvoiceResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ok")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "result"))
-- | Create a new 'PostSendInvoiceResponseBody200' with all required fields.
mkPostSendInvoiceResponseBody200 :: GHC.Types.Bool -- ^ 'ok'
  -> Message -- ^ 'result'
  -> PostSendInvoiceResponseBody200
mkPostSendInvoiceResponseBody200 ok result = PostSendInvoiceResponseBody200{ok = ok,
                                                                            result = result}
-- | > POST /sendInvoice
-- 
-- The same as 'postSendInvoice' but accepts an explicit configuration.
postSendInvoiceWithConfiguration :: forall m . TgBotAPI.Common.MonadHTTP m => TgBotAPI.Common.Configuration -- ^ The configuration to use in the request
  -> PostSendInvoiceRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response PostSendInvoiceResponse) -- ^ Monadic computation which returns the result of the operation
postSendInvoiceWithConfiguration config
                                 body = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostSendInvoiceResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostSendInvoiceResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                 PostSendInvoiceResponseBody200)
                                                                                                                                                                                  | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostSendInvoiceResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                   Error)
                                                                                                                                                                                  | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (TgBotAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/sendInvoice") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | > POST /sendInvoice
-- 
-- The same as 'postSendInvoice' but returns the raw 'Data.ByteString.Char8.ByteString'.
postSendInvoiceRaw :: forall m . TgBotAPI.Common.MonadHTTP m => PostSendInvoiceRequestBody -- ^ The request body to send
  -> TgBotAPI.Common.StripeT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postSendInvoiceRaw body = GHC.Base.id (TgBotAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/sendInvoice") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | > POST /sendInvoice
-- 
-- The same as 'postSendInvoice' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
postSendInvoiceWithConfigurationRaw :: forall m . TgBotAPI.Common.MonadHTTP m => TgBotAPI.Common.Configuration -- ^ The configuration to use in the request
  -> PostSendInvoiceRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postSendInvoiceWithConfigurationRaw config
                                    body = GHC.Base.id (TgBotAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/sendInvoice") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
