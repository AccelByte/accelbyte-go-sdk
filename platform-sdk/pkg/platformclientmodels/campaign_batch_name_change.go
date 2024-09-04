// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// CampaignBatchNameChange Campaign batch name change
//
// swagger:model Campaign batch name change.
type CampaignBatchNameChange struct {

	// new batch name, can contain special character, should not start or end with whitespaces, min. 3, max. 60 characters
	NewName string `json:"newName,omitempty"`

	// old batch name
	OldName string `json:"oldName,omitempty"`
}

// Validate validates this Campaign batch name change
func (m *CampaignBatchNameChange) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *CampaignBatchNameChange) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *CampaignBatchNameChange) UnmarshalBinary(b []byte) error {
	var res CampaignBatchNameChange
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
