// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package reportingclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// RestapiModerationRuleActionsRequest Restapi moderation rule actions request
//
// swagger:model Restapi moderation rule actions request.
type RestapiModerationRuleActionsRequest struct {

	// Ban account action configuration
	BanAccount *RestapiBanAccountActionRequest `json:"banAccount,omitempty"`

	// Enable delete chat action
	DeleteChat bool `json:"deleteChat"`

	// Custom services moderation actions
	ExtensionActionIds []string `json:"extensionActionIds,omitempty"`

	// Enable hide content action
	HideContent bool `json:"hideContent"`
}

// Validate validates this Restapi moderation rule actions request
func (m *RestapiModerationRuleActionsRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *RestapiModerationRuleActionsRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RestapiModerationRuleActionsRequest) UnmarshalBinary(b []byte) error {
	var res RestapiModerationRuleActionsRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
