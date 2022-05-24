// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package entitlement

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// NewUpdateUserEntitlementParams creates a new UpdateUserEntitlementParams object
// with the default values initialized.
func NewUpdateUserEntitlementParams() *UpdateUserEntitlementParams {
	var ()
	return &UpdateUserEntitlementParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateUserEntitlementParamsWithTimeout creates a new UpdateUserEntitlementParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateUserEntitlementParamsWithTimeout(timeout time.Duration) *UpdateUserEntitlementParams {
	var ()
	return &UpdateUserEntitlementParams{

		timeout: timeout,
	}
}

// NewUpdateUserEntitlementParamsWithContext creates a new UpdateUserEntitlementParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateUserEntitlementParamsWithContext(ctx context.Context) *UpdateUserEntitlementParams {
	var ()
	return &UpdateUserEntitlementParams{

		Context: ctx,
	}
}

// NewUpdateUserEntitlementParamsWithHTTPClient creates a new UpdateUserEntitlementParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateUserEntitlementParamsWithHTTPClient(client *http.Client) *UpdateUserEntitlementParams {
	var ()
	return &UpdateUserEntitlementParams{
		HTTPClient: client,
	}
}

/*UpdateUserEntitlementParams contains all the parameters to send to the API endpoint
for the update user entitlement operation typically these are written to a http.Request
*/
type UpdateUserEntitlementParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.EntitlementUpdate
	/*EntitlementID*/
	EntitlementID string
	/*Namespace*/
	Namespace string
	/*UserID*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the update user entitlement params
func (o *UpdateUserEntitlementParams) WithTimeout(timeout time.Duration) *UpdateUserEntitlementParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update user entitlement params
func (o *UpdateUserEntitlementParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update user entitlement params
func (o *UpdateUserEntitlementParams) WithContext(ctx context.Context) *UpdateUserEntitlementParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update user entitlement params
func (o *UpdateUserEntitlementParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update user entitlement params
func (o *UpdateUserEntitlementParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update user entitlement params
func (o *UpdateUserEntitlementParams) WithHTTPClient(client *http.Client) *UpdateUserEntitlementParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update user entitlement params
func (o *UpdateUserEntitlementParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update user entitlement params
func (o *UpdateUserEntitlementParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the update user entitlement params
func (o *UpdateUserEntitlementParams) WithBody(body *platformclientmodels.EntitlementUpdate) *UpdateUserEntitlementParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update user entitlement params
func (o *UpdateUserEntitlementParams) SetBody(body *platformclientmodels.EntitlementUpdate) {
	o.Body = body
}

// WithEntitlementID adds the entitlementID to the update user entitlement params
func (o *UpdateUserEntitlementParams) WithEntitlementID(entitlementID string) *UpdateUserEntitlementParams {
	o.SetEntitlementID(entitlementID)
	return o
}

// SetEntitlementID adds the entitlementId to the update user entitlement params
func (o *UpdateUserEntitlementParams) SetEntitlementID(entitlementID string) {
	o.EntitlementID = entitlementID
}

// WithNamespace adds the namespace to the update user entitlement params
func (o *UpdateUserEntitlementParams) WithNamespace(namespace string) *UpdateUserEntitlementParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update user entitlement params
func (o *UpdateUserEntitlementParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the update user entitlement params
func (o *UpdateUserEntitlementParams) WithUserID(userID string) *UpdateUserEntitlementParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the update user entitlement params
func (o *UpdateUserEntitlementParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateUserEntitlementParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param entitlementId
	if err := r.SetPathParam("entitlementId", o.EntitlementID); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
