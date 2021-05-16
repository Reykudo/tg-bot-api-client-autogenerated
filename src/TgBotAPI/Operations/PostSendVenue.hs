-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DuplicateRecordFields #-}

-- | Contains the different functions to run the operation postSendVenue
module TgBotAPI.Operations.PostSendVenue where

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

-- | > POST /sendVenue
-- 
-- Use this method to send information about a venue. On success, the sent [Message](https:\/\/core.telegram.org\/bots\/api\/\#message) is returned.
postSendVenue :: forall m . TgBotAPI.Common.MonadHTTP m => PostSendVenueRequestBody -- ^ The request body to send
  -> TgBotAPI.Common.StripeT m (Network.HTTP.Client.Types.Response PostSendVenueResponse) -- ^ Monadic computation which returns the result of the operation
postSendVenue body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostSendVenueResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostSendVenueResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                          PostSendVenueResponseBody200)
                                                                                                                                                             | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostSendVenueResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                            Error)
                                                                                                                                                             | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (TgBotAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/sendVenue") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/sendVenue.POST.requestBody.content.application\/json.schema@ in the specification.
-- 
-- 
data PostSendVenueRequestBody = PostSendVenueRequestBody {
  -- | address: Address of the venue
  address :: Data.Text.Internal.Text
  -- | allow_sending_without_reply: Pass *True*, if the message should be sent even if the specified replied-to message is not found
  , allowSendingWithoutReply :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | chat_id: Unique identifier for the target chat or username of the target channel (in the format \`\@channelusername\`)
  , chatId :: ChatIdVariants
  -- | disable_notification: Sends the message [silently](https:\/\/telegram.org\/blog\/channels-2-0\#silent-messages). Users will receive a notification with no sound.
  , disableNotification :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | foursquare_id: Foursquare identifier of the venue
  , foursquareId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | foursquare_type: Foursquare type of the venue, if known. (For example, “arts\\_entertainment\/default”, “arts\\_entertainment\/aquarium” or “food\/icecream”.)
  , foursquareType :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | google_place_id: Google Places identifier of the venue
  , googlePlaceId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | google_place_type: Google Places type of the venue. (See [supported types](https:\/\/developers.google.com\/places\/web-service\/supported_types).)
  , googlePlaceType :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | latitude: Latitude of the venue
  , latitude :: GHC.Types.Double
  -- | longitude: Longitude of the venue
  , longitude :: GHC.Types.Double
  -- | reply_markup: Additional interface options. A JSON-serialized object for an [inline keyboard](https:\/\/core.telegram.org\/bots\#inline-keyboards-and-on-the-fly-updating), [custom reply keyboard](https:\/\/core.telegram.org\/bots\#keyboards), instructions to remove reply keyboard or to force a reply from the user.
  , replyMarkup :: (GHC.Maybe.Maybe ReplyMarkup)
  -- | reply_to_message_id: If the message is a reply, ID of the original message
  , replyToMessageId :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | title: Name of the venue
  , title :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostSendVenueRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object ("address" Data.Aeson.Types.ToJSON..= address obj : "allow_sending_without_reply" Data.Aeson.Types.ToJSON..= allowSendingWithoutReply obj : "chat_id" Data.Aeson.Types.ToJSON..= chatId obj : "disable_notification" Data.Aeson.Types.ToJSON..= disableNotification obj : "foursquare_id" Data.Aeson.Types.ToJSON..= foursquareId obj : "foursquare_type" Data.Aeson.Types.ToJSON..= foursquareType obj : "google_place_id" Data.Aeson.Types.ToJSON..= googlePlaceId obj : "google_place_type" Data.Aeson.Types.ToJSON..= googlePlaceType obj : "latitude" Data.Aeson.Types.ToJSON..= latitude obj : "longitude" Data.Aeson.Types.ToJSON..= longitude obj : "reply_markup" Data.Aeson.Types.ToJSON..= replyMarkup obj : "reply_to_message_id" Data.Aeson.Types.ToJSON..= replyToMessageId obj : "title" Data.Aeson.Types.ToJSON..= title obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("address" Data.Aeson.Types.ToJSON..= address obj) GHC.Base.<> (("allow_sending_without_reply" Data.Aeson.Types.ToJSON..= allowSendingWithoutReply obj) GHC.Base.<> (("chat_id" Data.Aeson.Types.ToJSON..= chatId obj) GHC.Base.<> (("disable_notification" Data.Aeson.Types.ToJSON..= disableNotification obj) GHC.Base.<> (("foursquare_id" Data.Aeson.Types.ToJSON..= foursquareId obj) GHC.Base.<> (("foursquare_type" Data.Aeson.Types.ToJSON..= foursquareType obj) GHC.Base.<> (("google_place_id" Data.Aeson.Types.ToJSON..= googlePlaceId obj) GHC.Base.<> (("google_place_type" Data.Aeson.Types.ToJSON..= googlePlaceType obj) GHC.Base.<> (("latitude" Data.Aeson.Types.ToJSON..= latitude obj) GHC.Base.<> (("longitude" Data.Aeson.Types.ToJSON..= longitude obj) GHC.Base.<> (("reply_markup" Data.Aeson.Types.ToJSON..= replyMarkup obj) GHC.Base.<> (("reply_to_message_id" Data.Aeson.Types.ToJSON..= replyToMessageId obj) GHC.Base.<> ("title" Data.Aeson.Types.ToJSON..= title obj)))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostSendVenueRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSendVenueRequestBody" (\obj -> ((((((((((((GHC.Base.pure PostSendVenueRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "allow_sending_without_reply")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "chat_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "disable_notification")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "foursquare_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "foursquare_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "google_place_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "google_place_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "latitude")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "longitude")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reply_markup")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reply_to_message_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "title"))
-- | Create a new 'PostSendVenueRequestBody' with all required fields.
mkPostSendVenueRequestBody :: Data.Text.Internal.Text -- ^ 'address'
  -> ChatIdVariants -- ^ 'chatId'
  -> GHC.Types.Double -- ^ 'latitude'
  -> GHC.Types.Double -- ^ 'longitude'
  -> Data.Text.Internal.Text -- ^ 'title'
  -> PostSendVenueRequestBody
mkPostSendVenueRequestBody address chatId latitude longitude title = PostSendVenueRequestBody{address = address,
                                                                                              allowSendingWithoutReply = GHC.Maybe.Nothing,
                                                                                              chatId = chatId,
                                                                                              disableNotification = GHC.Maybe.Nothing,
                                                                                              foursquareId = GHC.Maybe.Nothing,
                                                                                              foursquareType = GHC.Maybe.Nothing,
                                                                                              googlePlaceId = GHC.Maybe.Nothing,
                                                                                              googlePlaceType = GHC.Maybe.Nothing,
                                                                                              latitude = latitude,
                                                                                              longitude = longitude,
                                                                                              replyMarkup = GHC.Maybe.Nothing,
                                                                                              replyToMessageId = GHC.Maybe.Nothing,
                                                                                              title = title}
-- | Defines the oneOf schema located at @paths.\/sendVenue.POST.requestBody.content.application\/json.schema.properties.chat_id.anyOf@ in the specification.
-- 
-- Unique identifier for the target chat or username of the target channel (in the format \`\@channelusername\`)
data ChatIdVariants =
   ChatIdInt GHC.Types.Int
  | ChatIdText Data.Text.Internal.Text
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ChatIdVariants
    where toJSON (ChatIdInt a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (ChatIdText a) = Data.Aeson.Types.ToJSON.toJSON a
instance Data.Aeson.Types.FromJSON.FromJSON ChatIdVariants
    where parseJSON val = case (ChatIdInt Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((ChatIdText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                              Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
                              Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
-- | Defines the object schema located at @paths.\/sendVenue.POST.requestBody.content.application\/json.schema.properties.reply_markup.anyOf@ in the specification.
-- 
-- Additional interface options. A JSON-serialized object for an [inline keyboard](https:\\\/\\\/core.telegram.org\\\/bots\\\#inline-keyboards-and-on-the-fly-updating), [custom reply keyboard](https:\\\/\\\/core.telegram.org\\\/bots\\\#keyboards), instructions to remove reply keyboard or to force a reply from the user.
data ReplyMarkup = ReplyMarkup {
  -- | force_reply: Shows reply interface to the user, as if they manually selected the bot\'s message and tapped \'Reply\'
  forceReply :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | inline_keyboard: Array of button rows, each represented by an Array of [InlineKeyboardButton](https:\/\/core.telegram.org\/bots\/api\/\#inlinekeyboardbutton) objects
  , inlineKeyboard :: (GHC.Maybe.Maybe ([[InlineKeyboardButton]]))
  -- | keyboard: Array of button rows, each represented by an Array of [KeyboardButton](https:\/\/core.telegram.org\/bots\/api\/\#keyboardbutton) objects
  , keyboard :: (GHC.Maybe.Maybe ([[KeyboardButton]]))
  -- | one_time_keyboard: *Optional*. Requests clients to hide the keyboard as soon as it\'s been used. The keyboard will still be available, but clients will automatically display the usual letter-keyboard in the chat – the user can press a special button in the input field to see the custom keyboard again. Defaults to *false*.
  , oneTimeKeyboard :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | remove_keyboard: Requests clients to remove the custom keyboard (user will not be able to summon this keyboard; if you want to hide the keyboard from sight but keep it accessible, use *one\\_time\\_keyboard* in [ReplyKeyboardMarkup](https:\/\/core.telegram.org\/bots\/api\/\#replykeyboardmarkup))
  , removeKeyboard :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | resize_keyboard: *Optional*. Requests clients to resize the keyboard vertically for optimal fit (e.g., make the keyboard smaller if there are just two rows of buttons). Defaults to *false*, in which case the custom keyboard is always of the same height as the app\'s standard keyboard.
  , resizeKeyboard :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | selective: *Optional*. Use this parameter if you want to show the keyboard to specific users only. Targets: 1) users that are \@mentioned in the *text* of the [Message](https:\/\/core.telegram.org\/bots\/api\/\#message) object; 2) if the bot\'s message is a reply (has *reply\\_to\\_message\\_id*), sender of the original message.  
  -- 
  -- *Example:* A user requests to change the bot\'s language, bot replies to the request with a keyboard to select the new language. Other users in the group don\'t see the keyboard.
  , selective :: (GHC.Maybe.Maybe GHC.Types.Bool)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ReplyMarkup
    where toJSON obj = Data.Aeson.Types.Internal.object ("force_reply" Data.Aeson.Types.ToJSON..= forceReply obj : "inline_keyboard" Data.Aeson.Types.ToJSON..= inlineKeyboard obj : "keyboard" Data.Aeson.Types.ToJSON..= keyboard obj : "one_time_keyboard" Data.Aeson.Types.ToJSON..= oneTimeKeyboard obj : "remove_keyboard" Data.Aeson.Types.ToJSON..= removeKeyboard obj : "resize_keyboard" Data.Aeson.Types.ToJSON..= resizeKeyboard obj : "selective" Data.Aeson.Types.ToJSON..= selective obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("force_reply" Data.Aeson.Types.ToJSON..= forceReply obj) GHC.Base.<> (("inline_keyboard" Data.Aeson.Types.ToJSON..= inlineKeyboard obj) GHC.Base.<> (("keyboard" Data.Aeson.Types.ToJSON..= keyboard obj) GHC.Base.<> (("one_time_keyboard" Data.Aeson.Types.ToJSON..= oneTimeKeyboard obj) GHC.Base.<> (("remove_keyboard" Data.Aeson.Types.ToJSON..= removeKeyboard obj) GHC.Base.<> (("resize_keyboard" Data.Aeson.Types.ToJSON..= resizeKeyboard obj) GHC.Base.<> ("selective" Data.Aeson.Types.ToJSON..= selective obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON ReplyMarkup
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ReplyMarkup" (\obj -> ((((((GHC.Base.pure ReplyMarkup GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "force_reply")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "inline_keyboard")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "keyboard")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "one_time_keyboard")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "remove_keyboard")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "resize_keyboard")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "selective"))
-- | Create a new 'ReplyMarkup' with all required fields.
mkReplyMarkup :: ReplyMarkup
mkReplyMarkup = ReplyMarkup{forceReply = GHC.Maybe.Nothing,
                            inlineKeyboard = GHC.Maybe.Nothing,
                            keyboard = GHC.Maybe.Nothing,
                            oneTimeKeyboard = GHC.Maybe.Nothing,
                            removeKeyboard = GHC.Maybe.Nothing,
                            resizeKeyboard = GHC.Maybe.Nothing,
                            selective = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'postSendVenue'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostSendVenueResponseError' is used.
data PostSendVenueResponse =
   PostSendVenueResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostSendVenueResponse200 PostSendVenueResponseBody200 -- ^ 
  | PostSendVenueResponseDefault Error -- ^ 
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/sendVenue.POST.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data PostSendVenueResponseBody200 = PostSendVenueResponseBody200 {
  -- | ok
  ok :: GHC.Types.Bool
  -- | result: This object represents a message.
  , result :: Message
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostSendVenueResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("ok" Data.Aeson.Types.ToJSON..= ok obj : "result" Data.Aeson.Types.ToJSON..= result obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("ok" Data.Aeson.Types.ToJSON..= ok obj) GHC.Base.<> ("result" Data.Aeson.Types.ToJSON..= result obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSendVenueResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSendVenueResponseBody200" (\obj -> (GHC.Base.pure PostSendVenueResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ok")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "result"))
-- | Create a new 'PostSendVenueResponseBody200' with all required fields.
mkPostSendVenueResponseBody200 :: GHC.Types.Bool -- ^ 'ok'
  -> Message -- ^ 'result'
  -> PostSendVenueResponseBody200
mkPostSendVenueResponseBody200 ok result = PostSendVenueResponseBody200{ok = ok,
                                                                        result = result}
-- | > POST /sendVenue
-- 
-- The same as 'postSendVenue' but accepts an explicit configuration.
postSendVenueWithConfiguration :: forall m . TgBotAPI.Common.MonadHTTP m => TgBotAPI.Common.Configuration -- ^ The configuration to use in the request
  -> PostSendVenueRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response PostSendVenueResponse) -- ^ Monadic computation which returns the result of the operation
postSendVenueWithConfiguration config
                               body = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostSendVenueResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostSendVenueResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                           PostSendVenueResponseBody200)
                                                                                                                                                                              | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostSendVenueResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                             Error)
                                                                                                                                                                              | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (TgBotAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/sendVenue") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | > POST /sendVenue
-- 
-- The same as 'postSendVenue' but returns the raw 'Data.ByteString.Char8.ByteString'.
postSendVenueRaw :: forall m . TgBotAPI.Common.MonadHTTP m => PostSendVenueRequestBody -- ^ The request body to send
  -> TgBotAPI.Common.StripeT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postSendVenueRaw body = GHC.Base.id (TgBotAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/sendVenue") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | > POST /sendVenue
-- 
-- The same as 'postSendVenue' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
postSendVenueWithConfigurationRaw :: forall m . TgBotAPI.Common.MonadHTTP m => TgBotAPI.Common.Configuration -- ^ The configuration to use in the request
  -> PostSendVenueRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postSendVenueWithConfigurationRaw config
                                  body = GHC.Base.id (TgBotAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/sendVenue") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
