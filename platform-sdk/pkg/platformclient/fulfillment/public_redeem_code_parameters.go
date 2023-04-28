// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package fulfillment

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

// NewPublicRedeemCodeParams creates a new PublicRedeemCodeParams object
// with the default values initialized.
func NewPublicRedeemCodeParams() *PublicRedeemCodeParams {
	var ()
	return &PublicRedeemCodeParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicRedeemCodeParamsWithTimeout creates a new PublicRedeemCodeParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicRedeemCodeParamsWithTimeout(timeout time.Duration) *PublicRedeemCodeParams {
	var ()
	return &PublicRedeemCodeParams{

		timeout: timeout,
	}
}

// NewPublicRedeemCodeParamsWithContext creates a new PublicRedeemCodeParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicRedeemCodeParamsWithContext(ctx context.Context) *PublicRedeemCodeParams {
	var ()
	return &PublicRedeemCodeParams{

		Context: ctx,
	}
}

// NewPublicRedeemCodeParamsWithHTTPClient creates a new PublicRedeemCodeParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicRedeemCodeParamsWithHTTPClient(client *http.Client) *PublicRedeemCodeParams {
	var ()
	return &PublicRedeemCodeParams{
		HTTPClient: client,
	}
}

/*PublicRedeemCodeParams contains all the parameters to send to the API endpoint
for the public redeem code operation typically these are written to a http.Request
*/
type PublicRedeemCodeParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.FulfillCodeRequest
	/*Namespace*/
	Namespace string
	/*UserID*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public redeem code params
func (o *PublicRedeemCodeParams) WithTimeout(timeout time.Duration) *PublicRedeemCodeParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public redeem code params
func (o *PublicRedeemCodeParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public redeem code params
func (o *PublicRedeemCodeParams) WithContext(ctx context.Context) *PublicRedeemCodeParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public redeem code params
func (o *PublicRedeemCodeParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public redeem code params
func (o *PublicRedeemCodeParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public redeem code params
func (o *PublicRedeemCodeParams) WithHTTPClient(client *http.Client) *PublicRedeemCodeParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public redeem code params
func (o *PublicRedeemCodeParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public redeem code params
func (o *PublicRedeemCodeParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the public redeem code params
func (o *PublicRedeemCodeParams) WithBody(body *platformclientmodels.FulfillCodeRequest) *PublicRedeemCodeParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public redeem code params
func (o *PublicRedeemCodeParams) SetBody(body *platformclientmodels.FulfillCodeRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the public redeem code params
func (o *PublicRedeemCodeParams) WithNamespace(namespace string) *PublicRedeemCodeParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public redeem code params
func (o *PublicRedeemCodeParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the public redeem code params
func (o *PublicRedeemCodeParams) WithUserID(userID string) *PublicRedeemCodeParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public redeem code params
func (o *PublicRedeemCodeParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicRedeemCodeParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
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
