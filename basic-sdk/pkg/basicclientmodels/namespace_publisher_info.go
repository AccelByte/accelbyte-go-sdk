// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package basicclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// NamespacePublisherInfo Namespace publisher info
//
// swagger:model Namespace publisher info.
type NamespacePublisherInfo struct {

	// inform whether the specified namespace is publisher namespace or not
	Publisher bool `json:"publisher"`

	// name of publisher namespace
	PublisherNamespace string `json:"publisherNamespace,omitempty"`
}

// Validate validates this Namespace publisher info
func (m *NamespacePublisherInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *NamespacePublisherInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *NamespacePublisherInfo) UnmarshalBinary(b []byte) error {
	var res NamespacePublisherInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
