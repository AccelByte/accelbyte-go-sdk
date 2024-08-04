// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// SimpleUserDLCRewardContent Simple user DLC reward content
//
// swagger:model Simple user DLC reward content.
type SimpleUserDLCRewardContent struct {

	// currency
	Currency *PlatformRewardCurrency `json:"currency,omitempty"`

	// item
	Item *SimpleDLCRewardItem `json:"item,omitempty"`

	// time when this dlc item was obtained
	// Format: date-time
	ObtainedAt *strfmt.DateTime `json:"obtainedAt,omitempty"`

	// quantity if type is ITEM, amount if type is CURRENCY
	// Format: int32
	Quantity int32 `json:"quantity,omitempty"`

	// reward type
	// Enum: ['CURRENCY', 'ITEM']
	Type string `json:"type,omitempty"`
}

// Validate validates this Simple user DLC reward content
func (m *SimpleUserDLCRewardContent) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var simpleUserDlcRewardContentTypeTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CURRENCY", "ITEM"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		simpleUserDlcRewardContentTypeTypePropEnum = append(simpleUserDlcRewardContentTypeTypePropEnum, v)
	}
}

const (

	// SimpleUserDLCRewardContentTypeCURRENCY captures enum value "CURRENCY"
	SimpleUserDLCRewardContentTypeCURRENCY string = "CURRENCY"

	// SimpleUserDLCRewardContentTypeITEM captures enum value "ITEM"
	SimpleUserDLCRewardContentTypeITEM string = "ITEM"
)

// prop value enum
func (m *SimpleUserDLCRewardContent) validateTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, simpleUserDlcRewardContentTypeTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *SimpleUserDLCRewardContent) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *SimpleUserDLCRewardContent) UnmarshalBinary(b []byte) error {
	var res SimpleUserDLCRewardContent
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
