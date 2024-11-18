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

// ApimodelReplicaRequest Apimodel replica request
//
// swagger:model Apimodel replica request.
type ApimodelReplicaRequest struct {

	// maxreplica
	// Format: int32
	MaxReplica int32 `json:"maxReplica,omitempty"`

	// minreplica
	// Format: int32
	MinReplica int32 `json:"minReplica,omitempty"`
}

// Validate validates this Apimodel replica request
func (m *ApimodelReplicaRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelReplicaRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelReplicaRequest) UnmarshalBinary(b []byte) error {
	var res ApimodelReplicaRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
