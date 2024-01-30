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

// NewPublicTransferUserEntitlementParams creates a new PublicTransferUserEntitlementParams object
// with the default values initialized.
func NewPublicTransferUserEntitlementParams() *PublicTransferUserEntitlementParams {
	var ()
	return &PublicTransferUserEntitlementParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicTransferUserEntitlementParamsWithTimeout creates a new PublicTransferUserEntitlementParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicTransferUserEntitlementParamsWithTimeout(timeout time.Duration) *PublicTransferUserEntitlementParams {
	var ()
	return &PublicTransferUserEntitlementParams{

		timeout: timeout,
	}
}

// NewPublicTransferUserEntitlementParamsWithContext creates a new PublicTransferUserEntitlementParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicTransferUserEntitlementParamsWithContext(ctx context.Context) *PublicTransferUserEntitlementParams {
	var ()
	return &PublicTransferUserEntitlementParams{

		Context: ctx,
	}
}

// NewPublicTransferUserEntitlementParamsWithHTTPClient creates a new PublicTransferUserEntitlementParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicTransferUserEntitlementParamsWithHTTPClient(client *http.Client) *PublicTransferUserEntitlementParams {
	var ()
	return &PublicTransferUserEntitlementParams{
		HTTPClient: client,
	}
}

/*PublicTransferUserEntitlementParams contains all the parameters to send to the API endpoint
for the public transfer user entitlement operation typically these are written to a http.Request
*/
type PublicTransferUserEntitlementParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.EntitlementTransferRequest
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

// WithTimeout adds the timeout to the public transfer user entitlement params
func (o *PublicTransferUserEntitlementParams) WithTimeout(timeout time.Duration) *PublicTransferUserEntitlementParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public transfer user entitlement params
func (o *PublicTransferUserEntitlementParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public transfer user entitlement params
func (o *PublicTransferUserEntitlementParams) WithContext(ctx context.Context) *PublicTransferUserEntitlementParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public transfer user entitlement params
func (o *PublicTransferUserEntitlementParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public transfer user entitlement params
func (o *PublicTransferUserEntitlementParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public transfer user entitlement params
func (o *PublicTransferUserEntitlementParams) WithHTTPClient(client *http.Client) *PublicTransferUserEntitlementParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public transfer user entitlement params
func (o *PublicTransferUserEntitlementParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public transfer user entitlement params
func (o *PublicTransferUserEntitlementParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicTransferUserEntitlementParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the public transfer user entitlement params
func (o *PublicTransferUserEntitlementParams) WithBody(body *platformclientmodels.EntitlementTransferRequest) *PublicTransferUserEntitlementParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public transfer user entitlement params
func (o *PublicTransferUserEntitlementParams) SetBody(body *platformclientmodels.EntitlementTransferRequest) {
	o.Body = body
}

// WithEntitlementID adds the entitlementID to the public transfer user entitlement params
func (o *PublicTransferUserEntitlementParams) WithEntitlementID(entitlementID string) *PublicTransferUserEntitlementParams {
	o.SetEntitlementID(entitlementID)
	return o
}

// SetEntitlementID adds the entitlementId to the public transfer user entitlement params
func (o *PublicTransferUserEntitlementParams) SetEntitlementID(entitlementID string) {
	o.EntitlementID = entitlementID
}

// WithNamespace adds the namespace to the public transfer user entitlement params
func (o *PublicTransferUserEntitlementParams) WithNamespace(namespace string) *PublicTransferUserEntitlementParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public transfer user entitlement params
func (o *PublicTransferUserEntitlementParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the public transfer user entitlement params
func (o *PublicTransferUserEntitlementParams) WithUserID(userID string) *PublicTransferUserEntitlementParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public transfer user entitlement params
func (o *PublicTransferUserEntitlementParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicTransferUserEntitlementParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
