// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package basicclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// NamespaceContext Namespace context
//
// swagger:model Namespace context.
type NamespaceContext struct {

	// target namespace which need to get its context
	Namespace string `json:"namespace,omitempty"`

	// publisher namespace
	PublisherNamespace string `json:"publisherNamespace,omitempty"`

	// studio namespace, it will be empty when input namespace is publisher namespace
	StudioNamespace string `json:"studioNamespace,omitempty"`

	// input namespace type
	// Enum: ['Game', 'Publisher', 'Studio']
	Type string `json:"type,omitempty"`
}

// Validate validates this Namespace context
func (m *NamespaceContext) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var namespaceContextTypeTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["GAME", "PUBLISHER", "STUDIO"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		namespaceContextTypeTypePropEnum = append(namespaceContextTypeTypePropEnum, v)
	}
}

const (

	// NamespaceContextTypeGAME captures enum value "GAME"
	NamespaceContextTypeGAME string = "GAME"

	// NamespaceContextTypePUBLISHER captures enum value "PUBLISHER"
	NamespaceContextTypePUBLISHER string = "PUBLISHER"

	// NamespaceContextTypeSTUDIO captures enum value "STUDIO"
	NamespaceContextTypeSTUDIO string = "STUDIO"
)

// prop value enum
func (m *NamespaceContext) validateTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, namespaceContextTypeTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *NamespaceContext) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *NamespaceContext) UnmarshalBinary(b []byte) error {
	var res NamespaceContext
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
