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

// NewEnableUserEntitlementParams creates a new EnableUserEntitlementParams object
// with the default values initialized.
func NewEnableUserEntitlementParams() *EnableUserEntitlementParams {
	var ()
	return &EnableUserEntitlementParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewEnableUserEntitlementParamsWithTimeout creates a new EnableUserEntitlementParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewEnableUserEntitlementParamsWithTimeout(timeout time.Duration) *EnableUserEntitlementParams {
	var ()
	return &EnableUserEntitlementParams{

		timeout: timeout,
	}
}

// NewEnableUserEntitlementParamsWithContext creates a new EnableUserEntitlementParams object
// with the default values initialized, and the ability to set a context for a request
func NewEnableUserEntitlementParamsWithContext(ctx context.Context) *EnableUserEntitlementParams {
	var ()
	return &EnableUserEntitlementParams{

		Context: ctx,
	}
}

// NewEnableUserEntitlementParamsWithHTTPClient creates a new EnableUserEntitlementParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewEnableUserEntitlementParamsWithHTTPClient(client *http.Client) *EnableUserEntitlementParams {
	var ()
	return &EnableUserEntitlementParams{
		HTTPClient: client,
	}
}

/*EnableUserEntitlementParams contains all the parameters to send to the API endpoint
for the enable user entitlement operation typically these are written to a http.Request
*/
type EnableUserEntitlementParams struct {

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

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the enable user entitlement params
func (o *EnableUserEntitlementParams) WithTimeout(timeout time.Duration) *EnableUserEntitlementParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the enable user entitlement params
func (o *EnableUserEntitlementParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the enable user entitlement params
func (o *EnableUserEntitlementParams) WithContext(ctx context.Context) *EnableUserEntitlementParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the enable user entitlement params
func (o *EnableUserEntitlementParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the enable user entitlement params
func (o *EnableUserEntitlementParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the enable user entitlement params
func (o *EnableUserEntitlementParams) WithHTTPClient(client *http.Client) *EnableUserEntitlementParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the enable user entitlement params
func (o *EnableUserEntitlementParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the enable user entitlement params
func (o *EnableUserEntitlementParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *EnableUserEntitlementParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithEntitlementID adds the entitlementID to the enable user entitlement params
func (o *EnableUserEntitlementParams) WithEntitlementID(entitlementID string) *EnableUserEntitlementParams {
	o.SetEntitlementID(entitlementID)
	return o
}

// SetEntitlementID adds the entitlementId to the enable user entitlement params
func (o *EnableUserEntitlementParams) SetEntitlementID(entitlementID string) {
	o.EntitlementID = entitlementID
}

// WithNamespace adds the namespace to the enable user entitlement params
func (o *EnableUserEntitlementParams) WithNamespace(namespace string) *EnableUserEntitlementParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the enable user entitlement params
func (o *EnableUserEntitlementParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the enable user entitlement params
func (o *EnableUserEntitlementParams) WithUserID(userID string) *EnableUserEntitlementParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the enable user entitlement params
func (o *EnableUserEntitlementParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *EnableUserEntitlementParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.XFlightId == nil {
		if err := r.SetHeaderParam("X-Flight-Id", utils.GetDefaultFlightID().Value); err != nil {
			return err
		}
	} else {
		if err := r.SetHeaderParam("X-Flight-Id", *o.XFlightId); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
