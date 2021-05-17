-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DuplicateRecordFields #-}

-- | Contains the types generated from the schema Voice
module TgBotAPI.Types.Voice where

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

-- | Defines the object schema located at @components.schemas.Voice@ in the specification.
-- 
-- This object represents a voice note.
data Voice = Voice {
  -- | duration: Duration of the audio in seconds as defined by sender
  duration :: GHC.Int.Int64
  -- | file_id: Identifier for this file, which can be used to download or reuse the file
  , fileId :: Data.Text.Internal.Text
  -- | file_size: *Optional*. File size
  , fileSize :: (GHC.Maybe.Maybe GHC.Int.Int64)
  -- | file_unique_id: Unique identifier for this file, which is supposed to be the same over time and for different bots. Can\'t be used to download or reuse the file.
  , fileUniqueId :: Data.Text.Internal.Text
  -- | mime_type: *Optional*. MIME type of the file as defined by sender
  , mimeType :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Voice
    where toJSON obj = Data.Aeson.Types.Internal.object ("duration" Data.Aeson.Types.ToJSON..= duration obj : "file_id" Data.Aeson.Types.ToJSON..= fileId obj : "file_size" Data.Aeson.Types.ToJSON..= fileSize obj : "file_unique_id" Data.Aeson.Types.ToJSON..= fileUniqueId obj : "mime_type" Data.Aeson.Types.ToJSON..= mimeType obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("duration" Data.Aeson.Types.ToJSON..= duration obj) GHC.Base.<> (("file_id" Data.Aeson.Types.ToJSON..= fileId obj) GHC.Base.<> (("file_size" Data.Aeson.Types.ToJSON..= fileSize obj) GHC.Base.<> (("file_unique_id" Data.Aeson.Types.ToJSON..= fileUniqueId obj) GHC.Base.<> ("mime_type" Data.Aeson.Types.ToJSON..= mimeType obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON Voice
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Voice" (\obj -> ((((GHC.Base.pure Voice GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "duration")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "file_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "file_size")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "file_unique_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "mime_type"))
-- | Create a new 'Voice' with all required fields.
mkVoice :: GHC.Int.Int64 -- ^ 'duration'
  -> Data.Text.Internal.Text -- ^ 'fileId'
  -> Data.Text.Internal.Text -- ^ 'fileUniqueId'
  -> Voice
mkVoice duration fileId fileUniqueId = Voice{duration = duration,
                                             fileId = fileId,
                                             fileSize = GHC.Maybe.Nothing,
                                             fileUniqueId = fileUniqueId,
                                             mimeType = GHC.Maybe.Nothing}
