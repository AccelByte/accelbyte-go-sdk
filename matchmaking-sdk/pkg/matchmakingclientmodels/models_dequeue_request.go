// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package matchmakingclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsDequeueRequest Models dequeue request
//
// swagger:model Models dequeue request.
type ModelsDequeueRequest struct {

	// match_id
	// Required: true
	MatchID *string `json:"match_id"`
}

// Validate validates this Models dequeue request
func (m *ModelsDequeueRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateMatchID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsDequeueRequest) validateMatchID(formats strfmt.Registry) error {

	if err := validate.Required("match_id", "body", m.MatchID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsDequeueRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsDequeueRequest) UnmarshalBinary(b []byte) error {
	var res ModelsDequeueRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
