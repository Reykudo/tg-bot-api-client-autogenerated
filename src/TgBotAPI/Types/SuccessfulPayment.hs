-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DuplicateRecordFields #-}

-- | Contains the types generated from the schema SuccessfulPayment
module TgBotAPI.Types.SuccessfulPayment where

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
import  {-# SOURCE #-}  TgBotAPI.Types.OrderInfo (OrderInfo)

-- | Defines the object schema located at @components.schemas.SuccessfulPayment@ in the specification.
-- 
-- This object contains basic information about a successful payment.
data SuccessfulPayment = SuccessfulPayment {
  -- | currency: Three-letter ISO 4217 [currency](\/bots\/payments\#supported-currencies) code
  currency :: Data.Text.Internal.Text
  -- | invoice_payload: Bot specified invoice payload
  , invoicePayload :: Data.Text.Internal.Text
  -- | order_info: This object represents information about an order.
  , orderInfo :: (GHC.Maybe.Maybe OrderInfo)
  -- | provider_payment_charge_id: Provider payment identifier
  , providerPaymentChargeId :: Data.Text.Internal.Text
  -- | shipping_option_id: *Optional*. Identifier of the shipping option chosen by the user
  , shippingOptionId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | telegram_payment_charge_id: Telegram payment identifier
  , telegramPaymentChargeId :: Data.Text.Internal.Text
  -- | total_amount: Total price in the *smallest units* of the currency (integer, **not** float\/double). For example, for a price of \`US\$ 1.45\` pass \`amount = 145\`. See the *exp* parameter in [currencies.json](https:\/\/core.telegram.org\/bots\/payments\/currencies.json), it shows the number of digits past the decimal point for each currency (2 for the majority of currencies).
  , totalAmount :: GHC.Types.Int
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON SuccessfulPayment
    where toJSON obj = Data.Aeson.Types.Internal.object ("currency" Data.Aeson.Types.ToJSON..= currency obj : "invoice_payload" Data.Aeson.Types.ToJSON..= invoicePayload obj : "order_info" Data.Aeson.Types.ToJSON..= orderInfo obj : "provider_payment_charge_id" Data.Aeson.Types.ToJSON..= providerPaymentChargeId obj : "shipping_option_id" Data.Aeson.Types.ToJSON..= shippingOptionId obj : "telegram_payment_charge_id" Data.Aeson.Types.ToJSON..= telegramPaymentChargeId obj : "total_amount" Data.Aeson.Types.ToJSON..= totalAmount obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("currency" Data.Aeson.Types.ToJSON..= currency obj) GHC.Base.<> (("invoice_payload" Data.Aeson.Types.ToJSON..= invoicePayload obj) GHC.Base.<> (("order_info" Data.Aeson.Types.ToJSON..= orderInfo obj) GHC.Base.<> (("provider_payment_charge_id" Data.Aeson.Types.ToJSON..= providerPaymentChargeId obj) GHC.Base.<> (("shipping_option_id" Data.Aeson.Types.ToJSON..= shippingOptionId obj) GHC.Base.<> (("telegram_payment_charge_id" Data.Aeson.Types.ToJSON..= telegramPaymentChargeId obj) GHC.Base.<> ("total_amount" Data.Aeson.Types.ToJSON..= totalAmount obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON SuccessfulPayment
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "SuccessfulPayment" (\obj -> ((((((GHC.Base.pure SuccessfulPayment GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "invoice_payload")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "order_info")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "provider_payment_charge_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shipping_option_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "telegram_payment_charge_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "total_amount"))
-- | Create a new 'SuccessfulPayment' with all required fields.
mkSuccessfulPayment :: Data.Text.Internal.Text -- ^ 'currency'
  -> Data.Text.Internal.Text -- ^ 'invoicePayload'
  -> Data.Text.Internal.Text -- ^ 'providerPaymentChargeId'
  -> Data.Text.Internal.Text -- ^ 'telegramPaymentChargeId'
  -> GHC.Types.Int -- ^ 'totalAmount'
  -> SuccessfulPayment
mkSuccessfulPayment currency invoicePayload providerPaymentChargeId telegramPaymentChargeId totalAmount = SuccessfulPayment{currency = currency,
                                                                                                                            invoicePayload = invoicePayload,
                                                                                                                            orderInfo = GHC.Maybe.Nothing,
                                                                                                                            providerPaymentChargeId = providerPaymentChargeId,
                                                                                                                            shippingOptionId = GHC.Maybe.Nothing,
                                                                                                                            telegramPaymentChargeId = telegramPaymentChargeId,
                                                                                                                            totalAmount = totalAmount}
