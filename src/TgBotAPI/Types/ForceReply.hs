-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DuplicateRecordFields #-}

-- | Contains the types generated from the schema ForceReply
module TgBotAPI.Types.ForceReply where

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

-- | Defines the object schema located at @components.schemas.ForceReply@ in the specification.
-- 
-- Upon receiving a message with this object, Telegram clients will display a reply interface to the user (act as if the user has selected the bot\'s message and tapped \'Reply\'). This can be extremely useful if you want to create user-friendly step-by-step interfaces without having to sacrifice [privacy mode](\/bots\#privacy-mode).
data ForceReply = ForceReply {
  -- | force_reply: Shows reply interface to the user, as if they manually selected the bot\'s message and tapped \'Reply\'
  forceReply :: GHC.Types.Bool
  -- | selective: *Optional*. Use this parameter if you want to force reply from specific users only. Targets: 1) users that are \@mentioned in the *text* of the [Message](https:\/\/core.telegram.org\/bots\/api\/\#message) object; 2) if the bot\'s message is a reply (has *reply\\_to\\_message\\_id*), sender of the original message.
  , selective :: (GHC.Maybe.Maybe GHC.Types.Bool)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ForceReply
    where toJSON obj = Data.Aeson.Types.Internal.object ("force_reply" Data.Aeson.Types.ToJSON..= forceReply obj : "selective" Data.Aeson.Types.ToJSON..= selective obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("force_reply" Data.Aeson.Types.ToJSON..= forceReply obj) GHC.Base.<> ("selective" Data.Aeson.Types.ToJSON..= selective obj))
instance Data.Aeson.Types.FromJSON.FromJSON ForceReply
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ForceReply" (\obj -> (GHC.Base.pure ForceReply GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "force_reply")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "selective"))
-- | Create a new 'ForceReply' with all required fields.
mkForceReply :: GHC.Types.Bool -- ^ 'forceReply'
  -> ForceReply
mkForceReply forceReply = ForceReply{forceReply = forceReply,
                                     selective = GHC.Maybe.Nothing}
