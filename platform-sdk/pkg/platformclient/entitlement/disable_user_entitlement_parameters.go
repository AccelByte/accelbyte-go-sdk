// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package entitlement

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
)

// NewDisableUserEntitlementParams creates a new DisableUserEntitlementParams object
// with the default values initialized.
func NewDisableUserEntitlementParams() *DisableUserEntitlementParams {
	var ()
	return &DisableUserEntitlementParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDisableUserEntitlementParamsWithTimeout creates a new DisableUserEntitlementParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDisableUserEntitlementParamsWithTimeout(timeout time.Duration) *DisableUserEntitlementParams {
	var ()
	return &DisableUserEntitlementParams{

		timeout: timeout,
	}
}

// NewDisableUserEntitlementParamsWithContext creates a new DisableUserEntitlementParams object
// with the default values initialized, and the ability to set a context for a request
func NewDisableUserEntitlementParamsWithContext(ctx context.Context) *DisableUserEntitlementParams {
	var ()
	return &DisableUserEntitlementParams{

		Context: ctx,
	}
}

// NewDisableUserEntitlementParamsWithHTTPClient creates a new DisableUserEntitlementParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDisableUserEntitlementParamsWithHTTPClient(client *http.Client) *DisableUserEntitlementParams {
	var ()
	return &DisableUserEntitlementParams{
		HTTPClient: client,
	}
}

/*DisableUserEntitlementParams contains all the parameters to send to the API endpoint
for the disable user entitlement operation typically these are written to a http.Request
*/
type DisableUserEntitlementParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
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

// WithTimeout adds the timeout to the disable user entitlement params
func (o *DisableUserEntitlementParams) WithTimeout(timeout time.Duration) *DisableUserEntitlementParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the disable user entitlement params
func (o *DisableUserEntitlementParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the disable user entitlement params
func (o *DisableUserEntitlementParams) WithContext(ctx context.Context) *DisableUserEntitlementParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the disable user entitlement params
func (o *DisableUserEntitlementParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the disable user entitlement params
func (o *DisableUserEntitlementParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the disable user entitlement params
func (o *DisableUserEntitlementParams) WithHTTPClient(client *http.Client) *DisableUserEntitlementParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the disable user entitlement params
func (o *DisableUserEntitlementParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the disable user entitlement params
func (o *DisableUserEntitlementParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithEntitlementID adds the entitlementID to the disable user entitlement params
func (o *DisableUserEntitlementParams) WithEntitlementID(entitlementID string) *DisableUserEntitlementParams {
	o.SetEntitlementID(entitlementID)
	return o
}

// SetEntitlementID adds the entitlementId to the disable user entitlement params
func (o *DisableUserEntitlementParams) SetEntitlementID(entitlementID string) {
	o.EntitlementID = entitlementID
}

// WithNamespace adds the namespace to the disable user entitlement params
func (o *DisableUserEntitlementParams) WithNamespace(namespace string) *DisableUserEntitlementParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the disable user entitlement params
func (o *DisableUserEntitlementParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the disable user entitlement params
func (o *DisableUserEntitlementParams) WithUserID(userID string) *DisableUserEntitlementParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the disable user entitlement params
func (o *DisableUserEntitlementParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *DisableUserEntitlementParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
