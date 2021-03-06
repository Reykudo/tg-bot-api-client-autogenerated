-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DuplicateRecordFields #-}

-- | Contains the types generated from the schema PhotoSize
module TgBotAPI.Types.PhotoSize where

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

-- | Defines the object schema located at @components.schemas.PhotoSize@ in the specification.
-- 
-- This object represents one size of a photo or a [file](https:\/\/core.telegram.org\/bots\/api\/\#document) \/ [sticker](https:\/\/core.telegram.org\/bots\/api\/\#sticker) thumbnail.
data PhotoSize = PhotoSize {
  -- | file_id: Identifier for this file, which can be used to download or reuse the file
  fileId :: Data.Text.Internal.Text
  -- | file_size: *Optional*. File size
  , fileSize :: (GHC.Maybe.Maybe GHC.Int.Int64)
  -- | file_unique_id: Unique identifier for this file, which is supposed to be the same over time and for different bots. Can\'t be used to download or reuse the file.
  , fileUniqueId :: Data.Text.Internal.Text
  -- | height: Photo height
  , height :: GHC.Int.Int64
  -- | width: Photo width
  , width :: GHC.Int.Int64
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PhotoSize
    where toJSON obj = Data.Aeson.Types.Internal.object ("file_id" Data.Aeson.Types.ToJSON..= fileId obj : "file_size" Data.Aeson.Types.ToJSON..= fileSize obj : "file_unique_id" Data.Aeson.Types.ToJSON..= fileUniqueId obj : "height" Data.Aeson.Types.ToJSON..= height obj : "width" Data.Aeson.Types.ToJSON..= width obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("file_id" Data.Aeson.Types.ToJSON..= fileId obj) GHC.Base.<> (("file_size" Data.Aeson.Types.ToJSON..= fileSize obj) GHC.Base.<> (("file_unique_id" Data.Aeson.Types.ToJSON..= fileUniqueId obj) GHC.Base.<> (("height" Data.Aeson.Types.ToJSON..= height obj) GHC.Base.<> ("width" Data.Aeson.Types.ToJSON..= width obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON PhotoSize
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PhotoSize" (\obj -> ((((GHC.Base.pure PhotoSize GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "file_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "file_size")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "file_unique_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "height")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "width"))
-- | Create a new 'PhotoSize' with all required fields.
mkPhotoSize :: Data.Text.Internal.Text -- ^ 'fileId'
  -> Data.Text.Internal.Text -- ^ 'fileUniqueId'
  -> GHC.Int.Int64 -- ^ 'height'
  -> GHC.Int.Int64 -- ^ 'width'
  -> PhotoSize
mkPhotoSize fileId fileUniqueId height width = PhotoSize{fileId = fileId,
                                                         fileSize = GHC.Maybe.Nothing,
                                                         fileUniqueId = fileUniqueId,
                                                         height = height,
                                                         width = width}
