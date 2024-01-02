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

// NewSellUserEntitlementParams creates a new SellUserEntitlementParams object
// with the default values initialized.
func NewSellUserEntitlementParams() *SellUserEntitlementParams {
	var ()
	return &SellUserEntitlementParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewSellUserEntitlementParamsWithTimeout creates a new SellUserEntitlementParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewSellUserEntitlementParamsWithTimeout(timeout time.Duration) *SellUserEntitlementParams {
	var ()
	return &SellUserEntitlementParams{

		timeout: timeout,
	}
}

// NewSellUserEntitlementParamsWithContext creates a new SellUserEntitlementParams object
// with the default values initialized, and the ability to set a context for a request
func NewSellUserEntitlementParamsWithContext(ctx context.Context) *SellUserEntitlementParams {
	var ()
	return &SellUserEntitlementParams{

		Context: ctx,
	}
}

// NewSellUserEntitlementParamsWithHTTPClient creates a new SellUserEntitlementParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewSellUserEntitlementParamsWithHTTPClient(client *http.Client) *SellUserEntitlementParams {
	var ()
	return &SellUserEntitlementParams{
		HTTPClient: client,
	}
}

/*SellUserEntitlementParams contains all the parameters to send to the API endpoint
for the sell user entitlement operation typically these are written to a http.Request
*/
type SellUserEntitlementParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.AdminEntitlementSoldRequest
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

// WithTimeout adds the timeout to the sell user entitlement params
func (o *SellUserEntitlementParams) WithTimeout(timeout time.Duration) *SellUserEntitlementParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the sell user entitlement params
func (o *SellUserEntitlementParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the sell user entitlement params
func (o *SellUserEntitlementParams) WithContext(ctx context.Context) *SellUserEntitlementParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the sell user entitlement params
func (o *SellUserEntitlementParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the sell user entitlement params
func (o *SellUserEntitlementParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the sell user entitlement params
func (o *SellUserEntitlementParams) WithHTTPClient(client *http.Client) *SellUserEntitlementParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the sell user entitlement params
func (o *SellUserEntitlementParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the sell user entitlement params
func (o *SellUserEntitlementParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the sell user entitlement params
func (o *SellUserEntitlementParams) WithBody(body *platformclientmodels.AdminEntitlementSoldRequest) *SellUserEntitlementParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the sell user entitlement params
func (o *SellUserEntitlementParams) SetBody(body *platformclientmodels.AdminEntitlementSoldRequest) {
	o.Body = body
}

// WithEntitlementID adds the entitlementID to the sell user entitlement params
func (o *SellUserEntitlementParams) WithEntitlementID(entitlementID string) *SellUserEntitlementParams {
	o.SetEntitlementID(entitlementID)
	return o
}

// SetEntitlementID adds the entitlementId to the sell user entitlement params
func (o *SellUserEntitlementParams) SetEntitlementID(entitlementID string) {
	o.EntitlementID = entitlementID
}

// WithNamespace adds the namespace to the sell user entitlement params
func (o *SellUserEntitlementParams) WithNamespace(namespace string) *SellUserEntitlementParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the sell user entitlement params
func (o *SellUserEntitlementParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the sell user entitlement params
func (o *SellUserEntitlementParams) WithUserID(userID string) *SellUserEntitlementParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the sell user entitlement params
func (o *SellUserEntitlementParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *SellUserEntitlementParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
