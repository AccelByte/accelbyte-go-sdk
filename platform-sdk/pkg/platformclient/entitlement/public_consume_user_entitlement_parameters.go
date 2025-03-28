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

// NewPublicConsumeUserEntitlementParams creates a new PublicConsumeUserEntitlementParams object
// with the default values initialized.
func NewPublicConsumeUserEntitlementParams() *PublicConsumeUserEntitlementParams {
	var ()
	return &PublicConsumeUserEntitlementParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicConsumeUserEntitlementParamsWithTimeout creates a new PublicConsumeUserEntitlementParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicConsumeUserEntitlementParamsWithTimeout(timeout time.Duration) *PublicConsumeUserEntitlementParams {
	var ()
	return &PublicConsumeUserEntitlementParams{

		timeout: timeout,
	}
}

// NewPublicConsumeUserEntitlementParamsWithContext creates a new PublicConsumeUserEntitlementParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicConsumeUserEntitlementParamsWithContext(ctx context.Context) *PublicConsumeUserEntitlementParams {
	var ()
	return &PublicConsumeUserEntitlementParams{

		Context: ctx,
	}
}

// NewPublicConsumeUserEntitlementParamsWithHTTPClient creates a new PublicConsumeUserEntitlementParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicConsumeUserEntitlementParamsWithHTTPClient(client *http.Client) *PublicConsumeUserEntitlementParams {
	var ()
	return &PublicConsumeUserEntitlementParams{
		HTTPClient: client,
	}
}

/*PublicConsumeUserEntitlementParams contains all the parameters to send to the API endpoint
for the public consume user entitlement operation typically these are written to a http.Request
*/
type PublicConsumeUserEntitlementParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.PublicEntitlementDecrement
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

// WithTimeout adds the timeout to the public consume user entitlement params
func (o *PublicConsumeUserEntitlementParams) WithTimeout(timeout time.Duration) *PublicConsumeUserEntitlementParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public consume user entitlement params
func (o *PublicConsumeUserEntitlementParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public consume user entitlement params
func (o *PublicConsumeUserEntitlementParams) WithContext(ctx context.Context) *PublicConsumeUserEntitlementParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public consume user entitlement params
func (o *PublicConsumeUserEntitlementParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public consume user entitlement params
func (o *PublicConsumeUserEntitlementParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public consume user entitlement params
func (o *PublicConsumeUserEntitlementParams) WithHTTPClient(client *http.Client) *PublicConsumeUserEntitlementParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public consume user entitlement params
func (o *PublicConsumeUserEntitlementParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public consume user entitlement params
func (o *PublicConsumeUserEntitlementParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicConsumeUserEntitlementParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the public consume user entitlement params
func (o *PublicConsumeUserEntitlementParams) WithBody(body *platformclientmodels.PublicEntitlementDecrement) *PublicConsumeUserEntitlementParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public consume user entitlement params
func (o *PublicConsumeUserEntitlementParams) SetBody(body *platformclientmodels.PublicEntitlementDecrement) {
	o.Body = body
}

// WithEntitlementID adds the entitlementID to the public consume user entitlement params
func (o *PublicConsumeUserEntitlementParams) WithEntitlementID(entitlementID string) *PublicConsumeUserEntitlementParams {
	o.SetEntitlementID(entitlementID)
	return o
}

// SetEntitlementID adds the entitlementId to the public consume user entitlement params
func (o *PublicConsumeUserEntitlementParams) SetEntitlementID(entitlementID string) {
	o.EntitlementID = entitlementID
}

// WithNamespace adds the namespace to the public consume user entitlement params
func (o *PublicConsumeUserEntitlementParams) WithNamespace(namespace string) *PublicConsumeUserEntitlementParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public consume user entitlement params
func (o *PublicConsumeUserEntitlementParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the public consume user entitlement params
func (o *PublicConsumeUserEntitlementParams) WithUserID(userID string) *PublicConsumeUserEntitlementParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public consume user entitlement params
func (o *PublicConsumeUserEntitlementParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicConsumeUserEntitlementParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
