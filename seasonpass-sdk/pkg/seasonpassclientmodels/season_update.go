// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package seasonpassclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// SeasonUpdate Season update
//
// swagger:model Season update.
type SeasonUpdate struct {

	// whether auto claim rewards
	AutoClaim bool `json:"autoClaim"`

	// default language, BCP 47 language tag
	DefaultLanguage string `json:"defaultLanguage,omitempty"`

	// default exp required for a tier
	// Format: int32
	DefaultRequiredExp int32 `json:"defaultRequiredExp,omitempty"`

	// draft store id
	DraftStoreID string `json:"draftStoreId,omitempty"`

	// end date time
	// Format: date-time
	End *strfmt.DateTime `json:"end,omitempty"`

	// strategy while exceed final tier exp
	ExcessStrategy *ExcessStrategy `json:"excessStrategy,omitempty"`

	// images
	Images []*Image `json:"images,omitempty"`

	// localization, {language: localization} map
	Localizations map[string]Localization `json:"localizations,omitempty"`

	// name, max length is 127
	Name string `json:"name,omitempty"`

	// start date time
	// Format: date-time
	Start *strfmt.DateTime `json:"start,omitempty"`

	// tier item id
	TierItemID string `json:"tierItemId,omitempty"`
}

// Validate validates this Season update
func (m *SeasonUpdate) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *SeasonUpdate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *SeasonUpdate) UnmarshalBinary(b []byte) error {
	var res SeasonUpdate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
