-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DuplicateRecordFields #-}

-- | Contains the types generated from the schema MessageAutoDeleteTimerChanged
module TgBotAPI.Types.MessageAutoDeleteTimerChanged where

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

-- | Defines the object schema located at @components.schemas.MessageAutoDeleteTimerChanged@ in the specification.
-- 
-- This object represents a service message about a change in auto-delete timer settings.
data MessageAutoDeleteTimerChanged = MessageAutoDeleteTimerChanged {
  -- | message_auto_delete_time: New auto-delete time for messages in the chat
  messageAutoDeleteTime :: GHC.Int.Int64
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON MessageAutoDeleteTimerChanged
    where toJSON obj = Data.Aeson.Types.Internal.object ("message_auto_delete_time" Data.Aeson.Types.ToJSON..= messageAutoDeleteTime obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("message_auto_delete_time" Data.Aeson.Types.ToJSON..= messageAutoDeleteTime obj)
instance Data.Aeson.Types.FromJSON.FromJSON MessageAutoDeleteTimerChanged
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "MessageAutoDeleteTimerChanged" (\obj -> GHC.Base.pure MessageAutoDeleteTimerChanged GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message_auto_delete_time"))
-- | Create a new 'MessageAutoDeleteTimerChanged' with all required fields.
mkMessageAutoDeleteTimerChanged :: GHC.Int.Int64 -- ^ 'messageAutoDeleteTime'
  -> MessageAutoDeleteTimerChanged
mkMessageAutoDeleteTimerChanged messageAutoDeleteTime = MessageAutoDeleteTimerChanged{messageAutoDeleteTime = messageAutoDeleteTime}
