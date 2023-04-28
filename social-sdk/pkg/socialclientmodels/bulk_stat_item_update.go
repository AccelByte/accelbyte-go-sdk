// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package socialclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// BulkStatItemUpdate Bulk stat item update
//
// swagger:model Bulk stat item update.
type BulkStatItemUpdate struct {

	// Additional data to be published in event payload
	AdditionalData interface{} `json:"additionalData,omitempty"`

	// statcode
	// Required: true
	StatCode *string `json:"statCode"`

	// updatestrategy
	// Enum: ['INCREMENT', 'MAX', 'MIN', 'OVERRIDE']
	// Required: true
	UpdateStrategy *string `json:"updateStrategy"`

	// value
	// Required: true
	// Format: double
	Value *float64 `json:"value"`
}

// Validate validates this Bulk stat item update
func (m *BulkStatItemUpdate) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateStatCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUpdateStrategy(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateValue(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *BulkStatItemUpdate) validateStatCode(formats strfmt.Registry) error {

	if err := validate.Required("statCode", "body", m.StatCode); err != nil {
		return err
	}

	return nil
}

var bulkStatItemUpdateTypeUpdateStrategyPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["INCREMENT", "MAX", "MIN", "OVERRIDE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		bulkStatItemUpdateTypeUpdateStrategyPropEnum = append(bulkStatItemUpdateTypeUpdateStrategyPropEnum, v)
	}
}

const (

	// BulkStatItemUpdateUpdateStrategyINCREMENT captures enum value "INCREMENT"
	BulkStatItemUpdateUpdateStrategyINCREMENT string = "INCREMENT"

	// BulkStatItemUpdateUpdateStrategyMAX captures enum value "MAX"
	BulkStatItemUpdateUpdateStrategyMAX string = "MAX"

	// BulkStatItemUpdateUpdateStrategyMIN captures enum value "MIN"
	BulkStatItemUpdateUpdateStrategyMIN string = "MIN"

	// BulkStatItemUpdateUpdateStrategyOVERRIDE captures enum value "OVERRIDE"
	BulkStatItemUpdateUpdateStrategyOVERRIDE string = "OVERRIDE"
)

// prop value enum
func (m *BulkStatItemUpdate) validateUpdateStrategyEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, bulkStatItemUpdateTypeUpdateStrategyPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *BulkStatItemUpdate) validateUpdateStrategy(formats strfmt.Registry) error {

	if err := validate.Required("updateStrategy", "body", m.UpdateStrategy); err != nil {
		return err
	}

	// value enum
	if err := m.validateUpdateStrategyEnum("updateStrategy", "body", *m.UpdateStrategy); err != nil {
		return err
	}

	return nil
}

func (m *BulkStatItemUpdate) validateValue(formats strfmt.Registry) error {

	if err := validate.Required("value", "body", m.Value); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *BulkStatItemUpdate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *BulkStatItemUpdate) UnmarshalBinary(b []byte) error {
	var res BulkStatItemUpdate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
