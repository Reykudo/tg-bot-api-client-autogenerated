-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DuplicateRecordFields #-}

-- | Contains the types generated from the schema Game
module TgBotAPI.Types.Game where

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
import  {-# SOURCE #-}  TgBotAPI.Types.Animation (Animation)
import  {-# SOURCE #-}  TgBotAPI.Types.MessageEntity (MessageEntity)
import  {-# SOURCE #-}  TgBotAPI.Types.PhotoSize (PhotoSize)

-- | Defines the object schema located at @components.schemas.Game@ in the specification.
-- 
-- This object represents a game. Use BotFather to create and edit games, their short names will act as unique identifiers.
data Game = Game {
  -- | animation: This object represents an animation file (GIF or H.264\/MPEG-4 AVC video without sound).
  animation :: (GHC.Maybe.Maybe Animation)
  -- | description: Description of the game
  , description :: Data.Text.Internal.Text
  -- | photo: Photo that will be displayed in the game message in chats.
  , photo :: ([PhotoSize])
  -- | text: *Optional*. Brief description of the game or high scores included in the game message. Can be automatically edited to include current high scores for the game when the bot calls [setGameScore](https:\/\/core.telegram.org\/bots\/api\/\#setgamescore), or manually edited using [editMessageText](https:\/\/core.telegram.org\/bots\/api\/\#editmessagetext). 0-4096 characters.
  , text :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | text_entities: *Optional*. Special entities that appear in *text*, such as usernames, URLs, bot commands, etc.
  , textEntities :: (GHC.Maybe.Maybe ([MessageEntity]))
  -- | title: Title of the game
  , title :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Game
    where toJSON obj = Data.Aeson.Types.Internal.object ("animation" Data.Aeson.Types.ToJSON..= animation obj : "description" Data.Aeson.Types.ToJSON..= description obj : "photo" Data.Aeson.Types.ToJSON..= photo obj : "text" Data.Aeson.Types.ToJSON..= text obj : "text_entities" Data.Aeson.Types.ToJSON..= textEntities obj : "title" Data.Aeson.Types.ToJSON..= title obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("animation" Data.Aeson.Types.ToJSON..= animation obj) GHC.Base.<> (("description" Data.Aeson.Types.ToJSON..= description obj) GHC.Base.<> (("photo" Data.Aeson.Types.ToJSON..= photo obj) GHC.Base.<> (("text" Data.Aeson.Types.ToJSON..= text obj) GHC.Base.<> (("text_entities" Data.Aeson.Types.ToJSON..= textEntities obj) GHC.Base.<> ("title" Data.Aeson.Types.ToJSON..= title obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON Game
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Game" (\obj -> (((((GHC.Base.pure Game GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "animation")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "photo")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "text")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "text_entities")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "title"))
-- | Create a new 'Game' with all required fields.
mkGame :: Data.Text.Internal.Text -- ^ 'description'
  -> [PhotoSize] -- ^ 'photo'
  -> Data.Text.Internal.Text -- ^ 'title'
  -> Game
mkGame description photo title = Game{animation = GHC.Maybe.Nothing,
                                      description = description,
                                      photo = photo,
                                      text = GHC.Maybe.Nothing,
                                      textEntities = GHC.Maybe.Nothing,
                                      title = title}
