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

// NewRevokeUseCountParams creates a new RevokeUseCountParams object
// with the default values initialized.
func NewRevokeUseCountParams() *RevokeUseCountParams {
	var ()
	return &RevokeUseCountParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewRevokeUseCountParamsWithTimeout creates a new RevokeUseCountParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewRevokeUseCountParamsWithTimeout(timeout time.Duration) *RevokeUseCountParams {
	var ()
	return &RevokeUseCountParams{

		timeout: timeout,
	}
}

// NewRevokeUseCountParamsWithContext creates a new RevokeUseCountParams object
// with the default values initialized, and the ability to set a context for a request
func NewRevokeUseCountParamsWithContext(ctx context.Context) *RevokeUseCountParams {
	var ()
	return &RevokeUseCountParams{

		Context: ctx,
	}
}

// NewRevokeUseCountParamsWithHTTPClient creates a new RevokeUseCountParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRevokeUseCountParamsWithHTTPClient(client *http.Client) *RevokeUseCountParams {
	var ()
	return &RevokeUseCountParams{
		HTTPClient: client,
	}
}

/*RevokeUseCountParams contains all the parameters to send to the API endpoint
for the revoke use count operation typically these are written to a http.Request
*/
type RevokeUseCountParams struct {

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

// WithTimeout adds the timeout to the revoke use count params
func (o *RevokeUseCountParams) WithTimeout(timeout time.Duration) *RevokeUseCountParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the revoke use count params
func (o *RevokeUseCountParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the revoke use count params
func (o *RevokeUseCountParams) WithContext(ctx context.Context) *RevokeUseCountParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the revoke use count params
func (o *RevokeUseCountParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the revoke use count params
func (o *RevokeUseCountParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the revoke use count params
func (o *RevokeUseCountParams) WithHTTPClient(client *http.Client) *RevokeUseCountParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the revoke use count params
func (o *RevokeUseCountParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the revoke use count params
func (o *RevokeUseCountParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *RevokeUseCountParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the revoke use count params
func (o *RevokeUseCountParams) WithBody(body *platformclientmodels.RevokeUseCountRequest) *RevokeUseCountParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the revoke use count params
func (o *RevokeUseCountParams) SetBody(body *platformclientmodels.RevokeUseCountRequest) {
	o.Body = body
}

// WithEntitlementID adds the entitlementID to the revoke use count params
func (o *RevokeUseCountParams) WithEntitlementID(entitlementID string) *RevokeUseCountParams {
	o.SetEntitlementID(entitlementID)
	return o
}

// SetEntitlementID adds the entitlementId to the revoke use count params
func (o *RevokeUseCountParams) SetEntitlementID(entitlementID string) {
	o.EntitlementID = entitlementID
}

// WithNamespace adds the namespace to the revoke use count params
func (o *RevokeUseCountParams) WithNamespace(namespace string) *RevokeUseCountParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the revoke use count params
func (o *RevokeUseCountParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the revoke use count params
func (o *RevokeUseCountParams) WithUserID(userID string) *RevokeUseCountParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the revoke use count params
func (o *RevokeUseCountParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *RevokeUseCountParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
