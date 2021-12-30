// Code generated by go-swagger; DO NOT EDIT.

package platformclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// PlayStationReconcileRequest play station reconcile request
//
// swagger:model PlayStationReconcileRequest
type PlayStationReconcileRequest struct {

	// service label
	ServiceLabel int32 `json:"serviceLabel,omitempty"`
}

// Validate validates this play station reconcile request
func (m *PlayStationReconcileRequest) Validate(formats strfmt.Registry) error {
	return nil
}

// MarshalBinary interface implementation
func (m *PlayStationReconcileRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PlayStationReconcileRequest) UnmarshalBinary(b []byte) error {
	var res PlayStationReconcileRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
