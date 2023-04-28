// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package order

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

// NewPublicCreateUserOrderParams creates a new PublicCreateUserOrderParams object
// with the default values initialized.
func NewPublicCreateUserOrderParams() *PublicCreateUserOrderParams {
	var ()
	return &PublicCreateUserOrderParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicCreateUserOrderParamsWithTimeout creates a new PublicCreateUserOrderParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicCreateUserOrderParamsWithTimeout(timeout time.Duration) *PublicCreateUserOrderParams {
	var ()
	return &PublicCreateUserOrderParams{

		timeout: timeout,
	}
}

// NewPublicCreateUserOrderParamsWithContext creates a new PublicCreateUserOrderParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicCreateUserOrderParamsWithContext(ctx context.Context) *PublicCreateUserOrderParams {
	var ()
	return &PublicCreateUserOrderParams{

		Context: ctx,
	}
}

// NewPublicCreateUserOrderParamsWithHTTPClient creates a new PublicCreateUserOrderParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicCreateUserOrderParamsWithHTTPClient(client *http.Client) *PublicCreateUserOrderParams {
	var ()
	return &PublicCreateUserOrderParams{
		HTTPClient: client,
	}
}

/*PublicCreateUserOrderParams contains all the parameters to send to the API endpoint
for the public create user order operation typically these are written to a http.Request
*/
type PublicCreateUserOrderParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.OrderCreate
	/*Namespace*/
	Namespace string
	/*UserID*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public create user order params
func (o *PublicCreateUserOrderParams) WithTimeout(timeout time.Duration) *PublicCreateUserOrderParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public create user order params
func (o *PublicCreateUserOrderParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public create user order params
func (o *PublicCreateUserOrderParams) WithContext(ctx context.Context) *PublicCreateUserOrderParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public create user order params
func (o *PublicCreateUserOrderParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public create user order params
func (o *PublicCreateUserOrderParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public create user order params
func (o *PublicCreateUserOrderParams) WithHTTPClient(client *http.Client) *PublicCreateUserOrderParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public create user order params
func (o *PublicCreateUserOrderParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public create user order params
func (o *PublicCreateUserOrderParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the public create user order params
func (o *PublicCreateUserOrderParams) WithBody(body *platformclientmodels.OrderCreate) *PublicCreateUserOrderParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public create user order params
func (o *PublicCreateUserOrderParams) SetBody(body *platformclientmodels.OrderCreate) {
	o.Body = body
}

// WithNamespace adds the namespace to the public create user order params
func (o *PublicCreateUserOrderParams) WithNamespace(namespace string) *PublicCreateUserOrderParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public create user order params
func (o *PublicCreateUserOrderParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the public create user order params
func (o *PublicCreateUserOrderParams) WithUserID(userID string) *PublicCreateUserOrderParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public create user order params
func (o *PublicCreateUserOrderParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicCreateUserOrderParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
