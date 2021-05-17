-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DuplicateRecordFields #-}

-- | Contains the types generated from the schema Animation
module TgBotAPI.Types.Animation where

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
import  {-# SOURCE #-}  TgBotAPI.Types.PhotoSize (PhotoSize)

-- | Defines the object schema located at @components.schemas.Animation@ in the specification.
-- 
-- This object represents an animation file (GIF or H.264\/MPEG-4 AVC video without sound).
data Animation = Animation {
  -- | duration: Duration of the video in seconds as defined by sender
  duration :: GHC.Int.Int64
  -- | file_id: Identifier for this file, which can be used to download or reuse the file
  , fileId :: Data.Text.Internal.Text
  -- | file_name: *Optional*. Original animation filename as defined by sender
  , fileName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | file_size: *Optional*. File size
  , fileSize :: (GHC.Maybe.Maybe GHC.Int.Int64)
  -- | file_unique_id: Unique identifier for this file, which is supposed to be the same over time and for different bots. Can\'t be used to download or reuse the file.
  , fileUniqueId :: Data.Text.Internal.Text
  -- | height: Video height as defined by sender
  , height :: GHC.Int.Int64
  -- | mime_type: *Optional*. MIME type of the file as defined by sender
  , mimeType :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | thumb: This object represents one size of a photo or a [file](https:\/\/core.telegram.org\/bots\/api\/\#document) \/ [sticker](https:\/\/core.telegram.org\/bots\/api\/\#sticker) thumbnail.
  , thumb :: (GHC.Maybe.Maybe PhotoSize)
  -- | width: Video width as defined by sender
  , width :: GHC.Int.Int64
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Animation
    where toJSON obj = Data.Aeson.Types.Internal.object ("duration" Data.Aeson.Types.ToJSON..= duration obj : "file_id" Data.Aeson.Types.ToJSON..= fileId obj : "file_name" Data.Aeson.Types.ToJSON..= fileName obj : "file_size" Data.Aeson.Types.ToJSON..= fileSize obj : "file_unique_id" Data.Aeson.Types.ToJSON..= fileUniqueId obj : "height" Data.Aeson.Types.ToJSON..= height obj : "mime_type" Data.Aeson.Types.ToJSON..= mimeType obj : "thumb" Data.Aeson.Types.ToJSON..= thumb obj : "width" Data.Aeson.Types.ToJSON..= width obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("duration" Data.Aeson.Types.ToJSON..= duration obj) GHC.Base.<> (("file_id" Data.Aeson.Types.ToJSON..= fileId obj) GHC.Base.<> (("file_name" Data.Aeson.Types.ToJSON..= fileName obj) GHC.Base.<> (("file_size" Data.Aeson.Types.ToJSON..= fileSize obj) GHC.Base.<> (("file_unique_id" Data.Aeson.Types.ToJSON..= fileUniqueId obj) GHC.Base.<> (("height" Data.Aeson.Types.ToJSON..= height obj) GHC.Base.<> (("mime_type" Data.Aeson.Types.ToJSON..= mimeType obj) GHC.Base.<> (("thumb" Data.Aeson.Types.ToJSON..= thumb obj) GHC.Base.<> ("width" Data.Aeson.Types.ToJSON..= width obj)))))))))
instance Data.Aeson.Types.FromJSON.FromJSON Animation
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Animation" (\obj -> ((((((((GHC.Base.pure Animation GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "duration")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "file_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "file_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "file_size")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "file_unique_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "height")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "mime_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "thumb")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "width"))
-- | Create a new 'Animation' with all required fields.
mkAnimation :: GHC.Int.Int64 -- ^ 'duration'
  -> Data.Text.Internal.Text -- ^ 'fileId'
  -> Data.Text.Internal.Text -- ^ 'fileUniqueId'
  -> GHC.Int.Int64 -- ^ 'height'
  -> GHC.Int.Int64 -- ^ 'width'
  -> Animation
mkAnimation duration fileId fileUniqueId height width = Animation{duration = duration,
                                                                  fileId = fileId,
                                                                  fileName = GHC.Maybe.Nothing,
                                                                  fileSize = GHC.Maybe.Nothing,
                                                                  fileUniqueId = fileUniqueId,
                                                                  height = height,
                                                                  mimeType = GHC.Maybe.Nothing,
                                                                  thumb = GHC.Maybe.Nothing,
                                                                  width = width}
