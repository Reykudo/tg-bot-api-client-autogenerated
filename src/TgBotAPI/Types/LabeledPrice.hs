-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DuplicateRecordFields #-}

-- | Contains the types generated from the schema LabeledPrice
module TgBotAPI.Types.LabeledPrice where

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

-- | Defines the object schema located at @components.schemas.LabeledPrice@ in the specification.
-- 
-- This object represents a portion of the price for goods or services.
data LabeledPrice = LabeledPrice {
  -- | amount: Price of the product in the *smallest units* of the [currency](\/bots\/payments\#supported-currencies) (integer, **not** float\/double). For example, for a price of \`US\$ 1.45\` pass \`amount = 145\`. See the *exp* parameter in [currencies.json](https:\/\/core.telegram.org\/bots\/payments\/currencies.json), it shows the number of digits past the decimal point for each currency (2 for the majority of currencies).
  amount :: GHC.Int.Int64
  -- | label: Portion label
  , label :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON LabeledPrice
    where toJSON obj = Data.Aeson.Types.Internal.object ("amount" Data.Aeson.Types.ToJSON..= amount obj : "label" Data.Aeson.Types.ToJSON..= label obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("amount" Data.Aeson.Types.ToJSON..= amount obj) GHC.Base.<> ("label" Data.Aeson.Types.ToJSON..= label obj))
instance Data.Aeson.Types.FromJSON.FromJSON LabeledPrice
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "LabeledPrice" (\obj -> (GHC.Base.pure LabeledPrice GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "label"))
-- | Create a new 'LabeledPrice' with all required fields.
mkLabeledPrice :: GHC.Int.Int64 -- ^ 'amount'
  -> Data.Text.Internal.Text -- ^ 'label'
  -> LabeledPrice
mkLabeledPrice amount label = LabeledPrice{amount = amount,
                                           label = label}
