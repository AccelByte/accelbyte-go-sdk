// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"encoding/json"
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// RewardsRequest Rewards request
//
// swagger:model Rewards request.
type RewardsRequest struct {

	// origin, if rewards contains item icon, it will credit into related origin wallet. if not set, it will be credit into System wallet
	// Enum: ['Epic', 'GooglePlay', 'IOS', 'Nintendo', 'Other', 'Playstation', 'Steam', 'System', 'Twitch', 'Xbox']
	Origin string `json:"origin,omitempty"`

	// reward
	// Required: true
	Rewards []*PlatformReward `json:"rewards"`

	// source
	// Enum: ['ACHIEVEMENT', 'DLC', 'GIFT', 'IAP', 'OTHER', 'PROMOTION', 'PURCHASE', 'REDEEM_CODE', 'REFERRAL_BONUS', 'REWARD']
	Source string `json:"source,omitempty"`
}

// Validate validates this Rewards request
func (m *RewardsRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateRewards(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var rewardsRequestTypeOriginPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["EPIC", "GOOGLEPLAY", "IOS", "NINTENDO", "OTHER", "PLAYSTATION", "STEAM", "SYSTEM", "TWITCH", "XBOX"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		rewardsRequestTypeOriginPropEnum = append(rewardsRequestTypeOriginPropEnum, v)
	}
}

const (

	// RewardsRequestOriginEPIC captures enum value "EPIC"
	RewardsRequestOriginEPIC string = "EPIC"

	// RewardsRequestOriginGOOGLEPLAY captures enum value "GOOGLEPLAY"
	RewardsRequestOriginGOOGLEPLAY string = "GOOGLEPLAY"

	// RewardsRequestOriginIOS captures enum value "IOS"
	RewardsRequestOriginIOS string = "IOS"

	// RewardsRequestOriginNINTENDO captures enum value "NINTENDO"
	RewardsRequestOriginNINTENDO string = "NINTENDO"

	// RewardsRequestOriginOTHER captures enum value "OTHER"
	RewardsRequestOriginOTHER string = "OTHER"

	// RewardsRequestOriginPLAYSTATION captures enum value "PLAYSTATION"
	RewardsRequestOriginPLAYSTATION string = "PLAYSTATION"

	// RewardsRequestOriginSTEAM captures enum value "STEAM"
	RewardsRequestOriginSTEAM string = "STEAM"

	// RewardsRequestOriginSYSTEM captures enum value "SYSTEM"
	RewardsRequestOriginSYSTEM string = "SYSTEM"

	// RewardsRequestOriginTWITCH captures enum value "TWITCH"
	RewardsRequestOriginTWITCH string = "TWITCH"

	// RewardsRequestOriginXBOX captures enum value "XBOX"
	RewardsRequestOriginXBOX string = "XBOX"
)

// prop value enum
func (m *RewardsRequest) validateOriginEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, rewardsRequestTypeOriginPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *RewardsRequest) validateRewards(formats strfmt.Registry) error {

	if err := validate.Required("rewards", "body", m.Rewards); err != nil {
		return err
	}

	for i := 0; i < len(m.Rewards); i++ {
		if swag.IsZero(m.Rewards[i]) { // not required
			continue
		}

		if m.Rewards[i] != nil {
			if err := m.Rewards[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("rewards" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

var rewardsRequestTypeSourcePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ACHIEVEMENT", "DLC", "GIFT", "IAP", "OTHER", "PROMOTION", "PURCHASE", "REDEEM_CODE", "REFERRAL_BONUS", "REWARD"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		rewardsRequestTypeSourcePropEnum = append(rewardsRequestTypeSourcePropEnum, v)
	}
}

const (

	// RewardsRequestSourceACHIEVEMENT captures enum value "ACHIEVEMENT"
	RewardsRequestSourceACHIEVEMENT string = "ACHIEVEMENT"

	// RewardsRequestSourceDLC captures enum value "DLC"
	RewardsRequestSourceDLC string = "DLC"

	// RewardsRequestSourceGIFT captures enum value "GIFT"
	RewardsRequestSourceGIFT string = "GIFT"

	// RewardsRequestSourceIAP captures enum value "IAP"
	RewardsRequestSourceIAP string = "IAP"

	// RewardsRequestSourceOTHER captures enum value "OTHER"
	RewardsRequestSourceOTHER string = "OTHER"

	// RewardsRequestSourcePROMOTION captures enum value "PROMOTION"
	RewardsRequestSourcePROMOTION string = "PROMOTION"

	// RewardsRequestSourcePURCHASE captures enum value "PURCHASE"
	RewardsRequestSourcePURCHASE string = "PURCHASE"

	// RewardsRequestSourceREDEEMCODE captures enum value "REDEEM_CODE"
	RewardsRequestSourceREDEEMCODE string = "REDEEM_CODE"

	// RewardsRequestSourceREFERRALBONUS captures enum value "REFERRAL_BONUS"
	RewardsRequestSourceREFERRALBONUS string = "REFERRAL_BONUS"

	// RewardsRequestSourceREWARD captures enum value "REWARD"
	RewardsRequestSourceREWARD string = "REWARD"
)

// prop value enum
func (m *RewardsRequest) validateSourceEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, rewardsRequestTypeSourcePropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *RewardsRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RewardsRequest) UnmarshalBinary(b []byte) error {
	var res RewardsRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
