// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package challengeclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// ModelEvaluatePlayerProgressionRequest Model evaluate player progression request
//
// swagger:model Model evaluate player progression request.
type ModelEvaluatePlayerProgressionRequest struct {

	// userids
	UserIds []string `json:"userIds,omitempty"`
}

// Validate validates this Model evaluate player progression request
func (m *ModelEvaluatePlayerProgressionRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ModelEvaluatePlayerProgressionRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelEvaluatePlayerProgressionRequest) UnmarshalBinary(b []byte) error {
	var res ModelEvaluatePlayerProgressionRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
