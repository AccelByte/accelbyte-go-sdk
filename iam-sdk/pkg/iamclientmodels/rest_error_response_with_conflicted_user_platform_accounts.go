// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iamclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// RestErrorResponseWithConflictedUserPlatformAccounts Rest error response with conflicted user platform accounts
//
// swagger:model Rest error response with conflicted user platform accounts.
type RestErrorResponseWithConflictedUserPlatformAccounts struct {

	// errorcode
	// Required: true
	// Format: int32
	ErrorCode *int32 `json:"errorCode"`

	// errormessage
	// Required: true
	ErrorMessage *string `json:"errorMessage"`

	// messagevariables
	MessageVariables *AccountcommonConflictedUserPlatformAccounts `json:"messageVariables,omitempty"`

	// User link a platform's different account is not allowed. This field contains the previous linked account details. Will have value only when in this case. (errorCode is 10200)
	PreviousLinkedPlatformAccount *AccountcommonPlatformLinkingHistory `json:"previousLinkedPlatformAccount,omitempty"`
}

// Validate validates this Rest error response with conflicted user platform accounts
func (m *RestErrorResponseWithConflictedUserPlatformAccounts) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateErrorCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateErrorMessage(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *RestErrorResponseWithConflictedUserPlatformAccounts) validateErrorCode(formats strfmt.Registry) error {

	if err := validate.Required("errorCode", "body", m.ErrorCode); err != nil {
		return err
	}

	return nil
}

func (m *RestErrorResponseWithConflictedUserPlatformAccounts) validateErrorMessage(formats strfmt.Registry) error {

	if err := validate.Required("errorMessage", "body", m.ErrorMessage); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *RestErrorResponseWithConflictedUserPlatformAccounts) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RestErrorResponseWithConflictedUserPlatformAccounts) UnmarshalBinary(b []byte) error {
	var res RestErrorResponseWithConflictedUserPlatformAccounts
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
