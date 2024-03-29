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

// NewRevokeUserEntitlementsParams creates a new RevokeUserEntitlementsParams object
// with the default values initialized.
func NewRevokeUserEntitlementsParams() *RevokeUserEntitlementsParams {
	var ()
	return &RevokeUserEntitlementsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewRevokeUserEntitlementsParamsWithTimeout creates a new RevokeUserEntitlementsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewRevokeUserEntitlementsParamsWithTimeout(timeout time.Duration) *RevokeUserEntitlementsParams {
	var ()
	return &RevokeUserEntitlementsParams{

		timeout: timeout,
	}
}

// NewRevokeUserEntitlementsParamsWithContext creates a new RevokeUserEntitlementsParams object
// with the default values initialized, and the ability to set a context for a request
func NewRevokeUserEntitlementsParamsWithContext(ctx context.Context) *RevokeUserEntitlementsParams {
	var ()
	return &RevokeUserEntitlementsParams{

		Context: ctx,
	}
}

// NewRevokeUserEntitlementsParamsWithHTTPClient creates a new RevokeUserEntitlementsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRevokeUserEntitlementsParamsWithHTTPClient(client *http.Client) *RevokeUserEntitlementsParams {
	var ()
	return &RevokeUserEntitlementsParams{
		HTTPClient: client,
	}
}

/*RevokeUserEntitlementsParams contains all the parameters to send to the API endpoint
for the revoke user entitlements operation typically these are written to a http.Request
*/
type RevokeUserEntitlementsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*UserID*/
	UserID string
	/*EntitlementIds
	  separate multiple value by commas parameter.

	*/
	EntitlementIds string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the revoke user entitlements params
func (o *RevokeUserEntitlementsParams) WithTimeout(timeout time.Duration) *RevokeUserEntitlementsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the revoke user entitlements params
func (o *RevokeUserEntitlementsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the revoke user entitlements params
func (o *RevokeUserEntitlementsParams) WithContext(ctx context.Context) *RevokeUserEntitlementsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the revoke user entitlements params
func (o *RevokeUserEntitlementsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the revoke user entitlements params
func (o *RevokeUserEntitlementsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the revoke user entitlements params
func (o *RevokeUserEntitlementsParams) WithHTTPClient(client *http.Client) *RevokeUserEntitlementsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the revoke user entitlements params
func (o *RevokeUserEntitlementsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the revoke user entitlements params
func (o *RevokeUserEntitlementsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *RevokeUserEntitlementsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the revoke user entitlements params
func (o *RevokeUserEntitlementsParams) WithNamespace(namespace string) *RevokeUserEntitlementsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the revoke user entitlements params
func (o *RevokeUserEntitlementsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the revoke user entitlements params
func (o *RevokeUserEntitlementsParams) WithUserID(userID string) *RevokeUserEntitlementsParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the revoke user entitlements params
func (o *RevokeUserEntitlementsParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithEntitlementIds adds the entitlementIds to the revoke user entitlements params
func (o *RevokeUserEntitlementsParams) WithEntitlementIds(entitlementIds string) *RevokeUserEntitlementsParams {
	o.SetEntitlementIds(entitlementIds)
	return o
}

// SetEntitlementIds adds the entitlementIds to the revoke user entitlements params
func (o *RevokeUserEntitlementsParams) SetEntitlementIds(entitlementIds string) {
	o.EntitlementIds = entitlementIds
}

// WriteToRequest writes these params to a swagger request
func (o *RevokeUserEntitlementsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// query param entitlementIds
	qrEntitlementIds := o.EntitlementIds
	qEntitlementIds := qrEntitlementIds
	if qEntitlementIds != "" {
		if err := r.SetQueryParam("entitlementIds", qEntitlementIds); err != nil {
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
