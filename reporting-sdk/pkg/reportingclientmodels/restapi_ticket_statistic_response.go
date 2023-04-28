// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package reportingclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// RestapiTicketStatisticResponse Restapi ticket statistic response
//
// swagger:model Restapi ticket statistic response.
type RestapiTicketStatisticResponse struct {

	// moderatedcount
	// Required: true
	// Format: int64
	ModeratedCount *int64 `json:"moderatedCount"`

	// opencount
	// Required: true
	// Format: int64
	OpenCount *int64 `json:"openCount"`

	// totalcount
	// Required: true
	// Format: int64
	TotalCount *int64 `json:"totalCount"`
}

// Validate validates this Restapi ticket statistic response
func (m *RestapiTicketStatisticResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateModeratedCount(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateOpenCount(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTotalCount(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *RestapiTicketStatisticResponse) validateModeratedCount(formats strfmt.Registry) error {

	if err := validate.Required("moderatedCount", "body", m.ModeratedCount); err != nil {
		return err
	}

	return nil
}

func (m *RestapiTicketStatisticResponse) validateOpenCount(formats strfmt.Registry) error {

	if err := validate.Required("openCount", "body", m.OpenCount); err != nil {
		return err
	}

	return nil
}

func (m *RestapiTicketStatisticResponse) validateTotalCount(formats strfmt.Registry) error {

	if err := validate.Required("totalCount", "body", m.TotalCount); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *RestapiTicketStatisticResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RestapiTicketStatisticResponse) UnmarshalBinary(b []byte) error {
	var res RestapiTicketStatisticResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
