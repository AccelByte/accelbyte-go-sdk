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

// NewPublicSellUserEntitlementParams creates a new PublicSellUserEntitlementParams object
// with the default values initialized.
func NewPublicSellUserEntitlementParams() *PublicSellUserEntitlementParams {
	var ()
	return &PublicSellUserEntitlementParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicSellUserEntitlementParamsWithTimeout creates a new PublicSellUserEntitlementParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicSellUserEntitlementParamsWithTimeout(timeout time.Duration) *PublicSellUserEntitlementParams {
	var ()
	return &PublicSellUserEntitlementParams{

		timeout: timeout,
	}
}

// NewPublicSellUserEntitlementParamsWithContext creates a new PublicSellUserEntitlementParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicSellUserEntitlementParamsWithContext(ctx context.Context) *PublicSellUserEntitlementParams {
	var ()
	return &PublicSellUserEntitlementParams{

		Context: ctx,
	}
}

// NewPublicSellUserEntitlementParamsWithHTTPClient creates a new PublicSellUserEntitlementParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicSellUserEntitlementParamsWithHTTPClient(client *http.Client) *PublicSellUserEntitlementParams {
	var ()
	return &PublicSellUserEntitlementParams{
		HTTPClient: client,
	}
}

/*PublicSellUserEntitlementParams contains all the parameters to send to the API endpoint
for the public sell user entitlement operation typically these are written to a http.Request
*/
type PublicSellUserEntitlementParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.EntitlementSoldRequest
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

// WithTimeout adds the timeout to the public sell user entitlement params
func (o *PublicSellUserEntitlementParams) WithTimeout(timeout time.Duration) *PublicSellUserEntitlementParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public sell user entitlement params
func (o *PublicSellUserEntitlementParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public sell user entitlement params
func (o *PublicSellUserEntitlementParams) WithContext(ctx context.Context) *PublicSellUserEntitlementParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public sell user entitlement params
func (o *PublicSellUserEntitlementParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public sell user entitlement params
func (o *PublicSellUserEntitlementParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public sell user entitlement params
func (o *PublicSellUserEntitlementParams) WithHTTPClient(client *http.Client) *PublicSellUserEntitlementParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public sell user entitlement params
func (o *PublicSellUserEntitlementParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public sell user entitlement params
func (o *PublicSellUserEntitlementParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicSellUserEntitlementParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the public sell user entitlement params
func (o *PublicSellUserEntitlementParams) WithBody(body *platformclientmodels.EntitlementSoldRequest) *PublicSellUserEntitlementParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public sell user entitlement params
func (o *PublicSellUserEntitlementParams) SetBody(body *platformclientmodels.EntitlementSoldRequest) {
	o.Body = body
}

// WithEntitlementID adds the entitlementID to the public sell user entitlement params
func (o *PublicSellUserEntitlementParams) WithEntitlementID(entitlementID string) *PublicSellUserEntitlementParams {
	o.SetEntitlementID(entitlementID)
	return o
}

// SetEntitlementID adds the entitlementId to the public sell user entitlement params
func (o *PublicSellUserEntitlementParams) SetEntitlementID(entitlementID string) {
	o.EntitlementID = entitlementID
}

// WithNamespace adds the namespace to the public sell user entitlement params
func (o *PublicSellUserEntitlementParams) WithNamespace(namespace string) *PublicSellUserEntitlementParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public sell user entitlement params
func (o *PublicSellUserEntitlementParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the public sell user entitlement params
func (o *PublicSellUserEntitlementParams) WithUserID(userID string) *PublicSellUserEntitlementParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public sell user entitlement params
func (o *PublicSellUserEntitlementParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicSellUserEntitlementParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
