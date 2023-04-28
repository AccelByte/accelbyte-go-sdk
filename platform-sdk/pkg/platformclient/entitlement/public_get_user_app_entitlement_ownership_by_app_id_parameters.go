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

// NewPublicGetUserAppEntitlementOwnershipByAppIDParams creates a new PublicGetUserAppEntitlementOwnershipByAppIDParams object
// with the default values initialized.
func NewPublicGetUserAppEntitlementOwnershipByAppIDParams() *PublicGetUserAppEntitlementOwnershipByAppIDParams {
	var ()
	return &PublicGetUserAppEntitlementOwnershipByAppIDParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetUserAppEntitlementOwnershipByAppIDParamsWithTimeout creates a new PublicGetUserAppEntitlementOwnershipByAppIDParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetUserAppEntitlementOwnershipByAppIDParamsWithTimeout(timeout time.Duration) *PublicGetUserAppEntitlementOwnershipByAppIDParams {
	var ()
	return &PublicGetUserAppEntitlementOwnershipByAppIDParams{

		timeout: timeout,
	}
}

// NewPublicGetUserAppEntitlementOwnershipByAppIDParamsWithContext creates a new PublicGetUserAppEntitlementOwnershipByAppIDParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetUserAppEntitlementOwnershipByAppIDParamsWithContext(ctx context.Context) *PublicGetUserAppEntitlementOwnershipByAppIDParams {
	var ()
	return &PublicGetUserAppEntitlementOwnershipByAppIDParams{

		Context: ctx,
	}
}

// NewPublicGetUserAppEntitlementOwnershipByAppIDParamsWithHTTPClient creates a new PublicGetUserAppEntitlementOwnershipByAppIDParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetUserAppEntitlementOwnershipByAppIDParamsWithHTTPClient(client *http.Client) *PublicGetUserAppEntitlementOwnershipByAppIDParams {
	var ()
	return &PublicGetUserAppEntitlementOwnershipByAppIDParams{
		HTTPClient: client,
	}
}

/*PublicGetUserAppEntitlementOwnershipByAppIDParams contains all the parameters to send to the API endpoint
for the public get user app entitlement ownership by app id operation typically these are written to a http.Request
*/
type PublicGetUserAppEntitlementOwnershipByAppIDParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*UserID*/
	UserID string
	/*AppID*/
	AppID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public get user app entitlement ownership by app id params
func (o *PublicGetUserAppEntitlementOwnershipByAppIDParams) WithTimeout(timeout time.Duration) *PublicGetUserAppEntitlementOwnershipByAppIDParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get user app entitlement ownership by app id params
func (o *PublicGetUserAppEntitlementOwnershipByAppIDParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get user app entitlement ownership by app id params
func (o *PublicGetUserAppEntitlementOwnershipByAppIDParams) WithContext(ctx context.Context) *PublicGetUserAppEntitlementOwnershipByAppIDParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get user app entitlement ownership by app id params
func (o *PublicGetUserAppEntitlementOwnershipByAppIDParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get user app entitlement ownership by app id params
func (o *PublicGetUserAppEntitlementOwnershipByAppIDParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get user app entitlement ownership by app id params
func (o *PublicGetUserAppEntitlementOwnershipByAppIDParams) WithHTTPClient(client *http.Client) *PublicGetUserAppEntitlementOwnershipByAppIDParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get user app entitlement ownership by app id params
func (o *PublicGetUserAppEntitlementOwnershipByAppIDParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get user app entitlement ownership by app id params
func (o *PublicGetUserAppEntitlementOwnershipByAppIDParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the public get user app entitlement ownership by app id params
func (o *PublicGetUserAppEntitlementOwnershipByAppIDParams) WithNamespace(namespace string) *PublicGetUserAppEntitlementOwnershipByAppIDParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get user app entitlement ownership by app id params
func (o *PublicGetUserAppEntitlementOwnershipByAppIDParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the public get user app entitlement ownership by app id params
func (o *PublicGetUserAppEntitlementOwnershipByAppIDParams) WithUserID(userID string) *PublicGetUserAppEntitlementOwnershipByAppIDParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public get user app entitlement ownership by app id params
func (o *PublicGetUserAppEntitlementOwnershipByAppIDParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithAppID adds the appID to the public get user app entitlement ownership by app id params
func (o *PublicGetUserAppEntitlementOwnershipByAppIDParams) WithAppID(appID string) *PublicGetUserAppEntitlementOwnershipByAppIDParams {
	o.SetAppID(appID)
	return o
}

// SetAppID adds the appId to the public get user app entitlement ownership by app id params
func (o *PublicGetUserAppEntitlementOwnershipByAppIDParams) SetAppID(appID string) {
	o.AppID = appID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetUserAppEntitlementOwnershipByAppIDParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
		return err
	}

	// query param appId
	qrAppID := o.AppID
	qAppID := qrAppID
	if qAppID != "" {
		if err := r.SetQueryParam("appId", qAppID); err != nil {
			return err
		}
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
