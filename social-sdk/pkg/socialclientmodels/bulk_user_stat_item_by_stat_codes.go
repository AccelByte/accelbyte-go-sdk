// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package socialclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// BulkUserStatItemByStatCodes Bulk user stat item by stat codes
//
// swagger:model Bulk user stat item by stat codes.
type BulkUserStatItemByStatCodes struct {

	// statcodes
	// Unique: true
	StatCodes []string `json:"statCodes"`
}

// Validate validates this Bulk user stat item by stat codes
func (m *BulkUserStatItemByStatCodes) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *BulkUserStatItemByStatCodes) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *BulkUserStatItemByStatCodes) UnmarshalBinary(b []byte) error {
	var res BulkUserStatItemByStatCodes
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
