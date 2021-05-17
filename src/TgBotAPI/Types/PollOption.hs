-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DuplicateRecordFields #-}

-- | Contains the types generated from the schema PollOption
module TgBotAPI.Types.PollOption where

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

-- | Defines the object schema located at @components.schemas.PollOption@ in the specification.
-- 
-- This object contains information about one answer option in a poll.
data PollOption = PollOption {
  -- | text: Option text, 1-100 characters
  text :: Data.Text.Internal.Text
  -- | voter_count: Number of users that voted for this option
  , voterCount :: GHC.Int.Int64
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PollOption
    where toJSON obj = Data.Aeson.Types.Internal.object ("text" Data.Aeson.Types.ToJSON..= text obj : "voter_count" Data.Aeson.Types.ToJSON..= voterCount obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("text" Data.Aeson.Types.ToJSON..= text obj) GHC.Base.<> ("voter_count" Data.Aeson.Types.ToJSON..= voterCount obj))
instance Data.Aeson.Types.FromJSON.FromJSON PollOption
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PollOption" (\obj -> (GHC.Base.pure PollOption GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "text")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "voter_count"))
-- | Create a new 'PollOption' with all required fields.
mkPollOption :: Data.Text.Internal.Text -- ^ 'text'
  -> GHC.Int.Int64 -- ^ 'voterCount'
  -> PollOption
mkPollOption text voterCount = PollOption{text = text,
                                          voterCount = voterCount}
