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

// NewPublicSplitUserEntitlementParams creates a new PublicSplitUserEntitlementParams object
// with the default values initialized.
func NewPublicSplitUserEntitlementParams() *PublicSplitUserEntitlementParams {
	var ()
	return &PublicSplitUserEntitlementParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicSplitUserEntitlementParamsWithTimeout creates a new PublicSplitUserEntitlementParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicSplitUserEntitlementParamsWithTimeout(timeout time.Duration) *PublicSplitUserEntitlementParams {
	var ()
	return &PublicSplitUserEntitlementParams{

		timeout: timeout,
	}
}

// NewPublicSplitUserEntitlementParamsWithContext creates a new PublicSplitUserEntitlementParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicSplitUserEntitlementParamsWithContext(ctx context.Context) *PublicSplitUserEntitlementParams {
	var ()
	return &PublicSplitUserEntitlementParams{

		Context: ctx,
	}
}

// NewPublicSplitUserEntitlementParamsWithHTTPClient creates a new PublicSplitUserEntitlementParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicSplitUserEntitlementParamsWithHTTPClient(client *http.Client) *PublicSplitUserEntitlementParams {
	var ()
	return &PublicSplitUserEntitlementParams{
		HTTPClient: client,
	}
}

/*PublicSplitUserEntitlementParams contains all the parameters to send to the API endpoint
for the public split user entitlement operation typically these are written to a http.Request
*/
type PublicSplitUserEntitlementParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.EntitlementSplitRequest
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

// WithTimeout adds the timeout to the public split user entitlement params
func (o *PublicSplitUserEntitlementParams) WithTimeout(timeout time.Duration) *PublicSplitUserEntitlementParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public split user entitlement params
func (o *PublicSplitUserEntitlementParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public split user entitlement params
func (o *PublicSplitUserEntitlementParams) WithContext(ctx context.Context) *PublicSplitUserEntitlementParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public split user entitlement params
func (o *PublicSplitUserEntitlementParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public split user entitlement params
func (o *PublicSplitUserEntitlementParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public split user entitlement params
func (o *PublicSplitUserEntitlementParams) WithHTTPClient(client *http.Client) *PublicSplitUserEntitlementParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public split user entitlement params
func (o *PublicSplitUserEntitlementParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public split user entitlement params
func (o *PublicSplitUserEntitlementParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicSplitUserEntitlementParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the public split user entitlement params
func (o *PublicSplitUserEntitlementParams) WithBody(body *platformclientmodels.EntitlementSplitRequest) *PublicSplitUserEntitlementParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public split user entitlement params
func (o *PublicSplitUserEntitlementParams) SetBody(body *platformclientmodels.EntitlementSplitRequest) {
	o.Body = body
}

// WithEntitlementID adds the entitlementID to the public split user entitlement params
func (o *PublicSplitUserEntitlementParams) WithEntitlementID(entitlementID string) *PublicSplitUserEntitlementParams {
	o.SetEntitlementID(entitlementID)
	return o
}

// SetEntitlementID adds the entitlementId to the public split user entitlement params
func (o *PublicSplitUserEntitlementParams) SetEntitlementID(entitlementID string) {
	o.EntitlementID = entitlementID
}

// WithNamespace adds the namespace to the public split user entitlement params
func (o *PublicSplitUserEntitlementParams) WithNamespace(namespace string) *PublicSplitUserEntitlementParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public split user entitlement params
func (o *PublicSplitUserEntitlementParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the public split user entitlement params
func (o *PublicSplitUserEntitlementParams) WithUserID(userID string) *PublicSplitUserEntitlementParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public split user entitlement params
func (o *PublicSplitUserEntitlementParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicSplitUserEntitlementParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
