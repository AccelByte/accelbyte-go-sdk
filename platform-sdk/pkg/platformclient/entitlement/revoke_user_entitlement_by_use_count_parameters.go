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

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// NewRevokeUserEntitlementByUseCountParams creates a new RevokeUserEntitlementByUseCountParams object
// with the default values initialized.
func NewRevokeUserEntitlementByUseCountParams() *RevokeUserEntitlementByUseCountParams {
	var ()
	return &RevokeUserEntitlementByUseCountParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewRevokeUserEntitlementByUseCountParamsWithTimeout creates a new RevokeUserEntitlementByUseCountParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewRevokeUserEntitlementByUseCountParamsWithTimeout(timeout time.Duration) *RevokeUserEntitlementByUseCountParams {
	var ()
	return &RevokeUserEntitlementByUseCountParams{

		timeout: timeout,
	}
}

// NewRevokeUserEntitlementByUseCountParamsWithContext creates a new RevokeUserEntitlementByUseCountParams object
// with the default values initialized, and the ability to set a context for a request
func NewRevokeUserEntitlementByUseCountParamsWithContext(ctx context.Context) *RevokeUserEntitlementByUseCountParams {
	var ()
	return &RevokeUserEntitlementByUseCountParams{

		Context: ctx,
	}
}

// NewRevokeUserEntitlementByUseCountParamsWithHTTPClient creates a new RevokeUserEntitlementByUseCountParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRevokeUserEntitlementByUseCountParamsWithHTTPClient(client *http.Client) *RevokeUserEntitlementByUseCountParams {
	var ()
	return &RevokeUserEntitlementByUseCountParams{
		HTTPClient: client,
	}
}

/*RevokeUserEntitlementByUseCountParams contains all the parameters to send to the API endpoint
for the revoke user entitlement by use count operation typically these are written to a http.Request
*/
type RevokeUserEntitlementByUseCountParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.RevokeUseCountRequest
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

// WithTimeout adds the timeout to the revoke user entitlement by use count params
func (o *RevokeUserEntitlementByUseCountParams) WithTimeout(timeout time.Duration) *RevokeUserEntitlementByUseCountParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the revoke user entitlement by use count params
func (o *RevokeUserEntitlementByUseCountParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the revoke user entitlement by use count params
func (o *RevokeUserEntitlementByUseCountParams) WithContext(ctx context.Context) *RevokeUserEntitlementByUseCountParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the revoke user entitlement by use count params
func (o *RevokeUserEntitlementByUseCountParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the revoke user entitlement by use count params
func (o *RevokeUserEntitlementByUseCountParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the revoke user entitlement by use count params
func (o *RevokeUserEntitlementByUseCountParams) WithHTTPClient(client *http.Client) *RevokeUserEntitlementByUseCountParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the revoke user entitlement by use count params
func (o *RevokeUserEntitlementByUseCountParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the revoke user entitlement by use count params
func (o *RevokeUserEntitlementByUseCountParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *RevokeUserEntitlementByUseCountParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the revoke user entitlement by use count params
func (o *RevokeUserEntitlementByUseCountParams) WithBody(body *platformclientmodels.RevokeUseCountRequest) *RevokeUserEntitlementByUseCountParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the revoke user entitlement by use count params
func (o *RevokeUserEntitlementByUseCountParams) SetBody(body *platformclientmodels.RevokeUseCountRequest) {
	o.Body = body
}

// WithEntitlementID adds the entitlementID to the revoke user entitlement by use count params
func (o *RevokeUserEntitlementByUseCountParams) WithEntitlementID(entitlementID string) *RevokeUserEntitlementByUseCountParams {
	o.SetEntitlementID(entitlementID)
	return o
}

// SetEntitlementID adds the entitlementId to the revoke user entitlement by use count params
func (o *RevokeUserEntitlementByUseCountParams) SetEntitlementID(entitlementID string) {
	o.EntitlementID = entitlementID
}

// WithNamespace adds the namespace to the revoke user entitlement by use count params
func (o *RevokeUserEntitlementByUseCountParams) WithNamespace(namespace string) *RevokeUserEntitlementByUseCountParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the revoke user entitlement by use count params
func (o *RevokeUserEntitlementByUseCountParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the revoke user entitlement by use count params
func (o *RevokeUserEntitlementByUseCountParams) WithUserID(userID string) *RevokeUserEntitlementByUseCountParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the revoke user entitlement by use count params
func (o *RevokeUserEntitlementByUseCountParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *RevokeUserEntitlementByUseCountParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
