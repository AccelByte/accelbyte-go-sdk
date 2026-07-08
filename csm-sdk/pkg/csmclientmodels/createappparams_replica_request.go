// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package csmclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// CreateappparamsReplicaRequest Createappparams replica request
//
// swagger:model Createappparams replica request.
type CreateappparamsReplicaRequest struct {

	// maxreplica
	// Format: int32
	MaxReplica int32 `json:"maxReplica,omitempty"`

	// minreplica
	// Format: int32
	MinReplica int32 `json:"minReplica,omitempty"`
}

// Validate validates this Createappparams replica request
func (m *CreateappparamsReplicaRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *CreateappparamsReplicaRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *CreateappparamsReplicaRequest) UnmarshalBinary(b []byte) error {
	var res CreateappparamsReplicaRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
