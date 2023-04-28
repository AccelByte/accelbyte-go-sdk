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

// PagedRetrieveUserAcceptedAgreementResponse Paged retrieve user accepted agreement response
//
// swagger:model Paged retrieve user accepted agreement response.
type PagedRetrieveUserAcceptedAgreementResponse struct {

	// data
	Data []*RetrieveUserAcceptedAgreementResponse `json:"data,omitempty"`

	// paging
	Paging *Paging `json:"paging,omitempty"`
}

// Validate validates this Paged retrieve user accepted agreement response
func (m *PagedRetrieveUserAcceptedAgreementResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *PagedRetrieveUserAcceptedAgreementResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PagedRetrieveUserAcceptedAgreementResponse) UnmarshalBinary(b []byte) error {
	var res PagedRetrieveUserAcceptedAgreementResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
