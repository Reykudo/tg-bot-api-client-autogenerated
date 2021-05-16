-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DuplicateRecordFields #-}

-- | Contains the types generated from the schema KeyboardButtonPollType
module TgBotAPI.Types.KeyboardButtonPollType where

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

-- | Defines the object schema located at @components.schemas.KeyboardButtonPollType@ in the specification.
-- 
-- This object represents type of a poll, which is allowed to be created and sent when the corresponding button is pressed.
data KeyboardButtonPollType = KeyboardButtonPollType {
  -- | type: *Optional*. If *quiz* is passed, the user will be allowed to create only polls in the quiz mode. If *regular* is passed, only regular polls will be allowed. Otherwise, the user will be allowed to create a poll of any type.
  type' :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON KeyboardButtonPollType
    where toJSON obj = Data.Aeson.Types.Internal.object ("type" Data.Aeson.Types.ToJSON..= type' obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("type" Data.Aeson.Types.ToJSON..= type' obj)
instance Data.Aeson.Types.FromJSON.FromJSON KeyboardButtonPollType
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "KeyboardButtonPollType" (\obj -> GHC.Base.pure KeyboardButtonPollType GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "type"))
-- | Create a new 'KeyboardButtonPollType' with all required fields.
mkKeyboardButtonPollType :: KeyboardButtonPollType
mkKeyboardButtonPollType = KeyboardButtonPollType{type' = GHC.Maybe.Nothing}
