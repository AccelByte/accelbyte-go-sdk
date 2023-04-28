// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package legalclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// UserAgreementsResponse User agreements response
//
// swagger:model User agreements response.
type UserAgreementsResponse struct {

	// agreement records
	Agreements []*RetrieveAcceptedAgreementResponse `json:"agreements,omitempty"`

	// user id
	UserID string `json:"userId,omitempty"`
}

// Validate validates this User agreements response
func (m *UserAgreementsResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *UserAgreementsResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *UserAgreementsResponse) UnmarshalBinary(b []byte) error {
	var res UserAgreementsResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
