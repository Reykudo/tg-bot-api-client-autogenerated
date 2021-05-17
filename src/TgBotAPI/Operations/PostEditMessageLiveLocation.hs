-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DuplicateRecordFields #-}

-- | Contains the different functions to run the operation postEditMessageLiveLocation
module TgBotAPI.Operations.PostEditMessageLiveLocation where

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

-- | > POST /editMessageLiveLocation
-- 
-- Use this method to edit live location messages. A location can be edited until its *live\\_period* expires or editing is explicitly disabled by a call to [stopMessageLiveLocation](https:\/\/core.telegram.org\/bots\/api\/\#stopmessagelivelocation). On success, if the edited message is not an inline message, the edited [Message](https:\/\/core.telegram.org\/bots\/api\/\#message) is returned, otherwise *True* is returned.
postEditMessageLiveLocation :: forall m . TgBotAPI.Common.MonadHTTP m => PostEditMessageLiveLocationRequestBody -- ^ The request body to send
  -> TgBotAPI.Common.StripeT m (Network.HTTP.Client.Types.Response PostEditMessageLiveLocationResponse) -- ^ Monadic computation which returns the result of the operation
postEditMessageLiveLocation body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostEditMessageLiveLocationResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostEditMessageLiveLocationResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                    PostEditMessageLiveLocationResponseBody200)
                                                                                                                                                                                         | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostEditMessageLiveLocationResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                      Error)
                                                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (TgBotAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/editMessageLiveLocation") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/editMessageLiveLocation.POST.requestBody.content.application\/json.schema@ in the specification.
-- 
-- 
data PostEditMessageLiveLocationRequestBody = PostEditMessageLiveLocationRequestBody {
  -- | chat_id: Required if *inline\\_message\\_id* is not specified. Unique identifier for the target chat or username of the target channel (in the format \`\@channelusername\`)
  chatId :: (GHC.Maybe.Maybe ChatIdVariants)
  -- | heading: Direction in which the user is moving, in degrees. Must be between 1 and 360 if specified.
  , heading :: (GHC.Maybe.Maybe GHC.Int.Int64)
  -- | horizontal_accuracy: The radius of uncertainty for the location, measured in meters; 0-1500
  , horizontalAccuracy :: (GHC.Maybe.Maybe GHC.Types.Double)
  -- | inline_message_id: Required if *chat\\_id* and *message\\_id* are not specified. Identifier of the inline message
  , inlineMessageId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | latitude: Latitude of new location
  , latitude :: GHC.Types.Double
  -- | longitude: Longitude of new location
  , longitude :: GHC.Types.Double
  -- | message_id: Required if *inline\\_message\\_id* is not specified. Identifier of the message to edit
  , messageId :: (GHC.Maybe.Maybe GHC.Int.Int64)
  -- | proximity_alert_radius: Maximum distance for proximity alerts about approaching another chat member, in meters. Must be between 1 and 100000 if specified.
  , proximityAlertRadius :: (GHC.Maybe.Maybe GHC.Int.Int64)
  -- | reply_markup: This object represents an [inline keyboard](https:\/\/core.telegram.org\/bots\#inline-keyboards-and-on-the-fly-updating) that appears right next to the message it belongs to.
  , replyMarkup :: (GHC.Maybe.Maybe InlineKeyboardMarkup)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostEditMessageLiveLocationRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object ("chat_id" Data.Aeson.Types.ToJSON..= chatId obj : "heading" Data.Aeson.Types.ToJSON..= heading obj : "horizontal_accuracy" Data.Aeson.Types.ToJSON..= horizontalAccuracy obj : "inline_message_id" Data.Aeson.Types.ToJSON..= inlineMessageId obj : "latitude" Data.Aeson.Types.ToJSON..= latitude obj : "longitude" Data.Aeson.Types.ToJSON..= longitude obj : "message_id" Data.Aeson.Types.ToJSON..= messageId obj : "proximity_alert_radius" Data.Aeson.Types.ToJSON..= proximityAlertRadius obj : "reply_markup" Data.Aeson.Types.ToJSON..= replyMarkup obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("chat_id" Data.Aeson.Types.ToJSON..= chatId obj) GHC.Base.<> (("heading" Data.Aeson.Types.ToJSON..= heading obj) GHC.Base.<> (("horizontal_accuracy" Data.Aeson.Types.ToJSON..= horizontalAccuracy obj) GHC.Base.<> (("inline_message_id" Data.Aeson.Types.ToJSON..= inlineMessageId obj) GHC.Base.<> (("latitude" Data.Aeson.Types.ToJSON..= latitude obj) GHC.Base.<> (("longitude" Data.Aeson.Types.ToJSON..= longitude obj) GHC.Base.<> (("message_id" Data.Aeson.Types.ToJSON..= messageId obj) GHC.Base.<> (("proximity_alert_radius" Data.Aeson.Types.ToJSON..= proximityAlertRadius obj) GHC.Base.<> ("reply_markup" Data.Aeson.Types.ToJSON..= replyMarkup obj)))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostEditMessageLiveLocationRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostEditMessageLiveLocationRequestBody" (\obj -> ((((((((GHC.Base.pure PostEditMessageLiveLocationRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "chat_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "heading")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "horizontal_accuracy")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "inline_message_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "latitude")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "longitude")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "message_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "proximity_alert_radius")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reply_markup"))
-- | Create a new 'PostEditMessageLiveLocationRequestBody' with all required fields.
mkPostEditMessageLiveLocationRequestBody :: GHC.Types.Double -- ^ 'latitude'
  -> GHC.Types.Double -- ^ 'longitude'
  -> PostEditMessageLiveLocationRequestBody
mkPostEditMessageLiveLocationRequestBody latitude longitude = PostEditMessageLiveLocationRequestBody{chatId = GHC.Maybe.Nothing,
                                                                                                     heading = GHC.Maybe.Nothing,
                                                                                                     horizontalAccuracy = GHC.Maybe.Nothing,
                                                                                                     inlineMessageId = GHC.Maybe.Nothing,
                                                                                                     latitude = latitude,
                                                                                                     longitude = longitude,
                                                                                                     messageId = GHC.Maybe.Nothing,
                                                                                                     proximityAlertRadius = GHC.Maybe.Nothing,
                                                                                                     replyMarkup = GHC.Maybe.Nothing}
-- | Defines the oneOf schema located at @paths.\/editMessageLiveLocation.POST.requestBody.content.application\/json.schema.properties.chat_id.anyOf@ in the specification.
-- 
-- Required if *inline\\_message\\_id* is not specified. Unique identifier for the target chat or username of the target channel (in the format \`\@channelusername\`)
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
-- | Represents a response of the operation 'postEditMessageLiveLocation'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostEditMessageLiveLocationResponseError' is used.
data PostEditMessageLiveLocationResponse =
   PostEditMessageLiveLocationResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostEditMessageLiveLocationResponse200 PostEditMessageLiveLocationResponseBody200 -- ^ 
  | PostEditMessageLiveLocationResponseDefault Error -- ^ 
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/editMessageLiveLocation.POST.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data PostEditMessageLiveLocationResponseBody200 = PostEditMessageLiveLocationResponseBody200 {
  -- | ok
  ok :: GHC.Types.Bool
  -- | result
  , result :: ResultVariants
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostEditMessageLiveLocationResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("ok" Data.Aeson.Types.ToJSON..= ok obj : "result" Data.Aeson.Types.ToJSON..= result obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("ok" Data.Aeson.Types.ToJSON..= ok obj) GHC.Base.<> ("result" Data.Aeson.Types.ToJSON..= result obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostEditMessageLiveLocationResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostEditMessageLiveLocationResponseBody200" (\obj -> (GHC.Base.pure PostEditMessageLiveLocationResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ok")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "result"))
-- | Create a new 'PostEditMessageLiveLocationResponseBody200' with all required fields.
mkPostEditMessageLiveLocationResponseBody200 :: GHC.Types.Bool -- ^ 'ok'
  -> ResultVariants -- ^ 'result'
  -> PostEditMessageLiveLocationResponseBody200
mkPostEditMessageLiveLocationResponseBody200 ok result = PostEditMessageLiveLocationResponseBody200{ok = ok,
                                                                                                    result = result}
-- | Defines the oneOf schema located at @paths.\/editMessageLiveLocation.POST.responses.200.content.application\/json.schema.properties.result.anyOf@ in the specification.
-- 
-- 
data ResultVariants =
   ResultMessage Message
  | ResultBool GHC.Types.Bool
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ResultVariants
    where toJSON (ResultMessage a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (ResultBool a) = Data.Aeson.Types.ToJSON.toJSON a
instance Data.Aeson.Types.FromJSON.FromJSON ResultVariants
    where parseJSON val = case (ResultMessage Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((ResultBool Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                              Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
                              Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
-- | > POST /editMessageLiveLocation
-- 
-- The same as 'postEditMessageLiveLocation' but accepts an explicit configuration.
postEditMessageLiveLocationWithConfiguration :: forall m . TgBotAPI.Common.MonadHTTP m => TgBotAPI.Common.Configuration -- ^ The configuration to use in the request
  -> PostEditMessageLiveLocationRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response PostEditMessageLiveLocationResponse) -- ^ Monadic computation which returns the result of the operation
postEditMessageLiveLocationWithConfiguration config
                                             body = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostEditMessageLiveLocationResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostEditMessageLiveLocationResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     PostEditMessageLiveLocationResponseBody200)
                                                                                                                                                                                                          | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostEditMessageLiveLocationResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                       Error)
                                                                                                                                                                                                          | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (TgBotAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/editMessageLiveLocation") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | > POST /editMessageLiveLocation
-- 
-- The same as 'postEditMessageLiveLocation' but returns the raw 'Data.ByteString.Char8.ByteString'.
postEditMessageLiveLocationRaw :: forall m . TgBotAPI.Common.MonadHTTP m => PostEditMessageLiveLocationRequestBody -- ^ The request body to send
  -> TgBotAPI.Common.StripeT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postEditMessageLiveLocationRaw body = GHC.Base.id (TgBotAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/editMessageLiveLocation") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | > POST /editMessageLiveLocation
-- 
-- The same as 'postEditMessageLiveLocation' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
postEditMessageLiveLocationWithConfigurationRaw :: forall m . TgBotAPI.Common.MonadHTTP m => TgBotAPI.Common.Configuration -- ^ The configuration to use in the request
  -> PostEditMessageLiveLocationRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postEditMessageLiveLocationWithConfigurationRaw config
                                                body = GHC.Base.id (TgBotAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/editMessageLiveLocation") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
