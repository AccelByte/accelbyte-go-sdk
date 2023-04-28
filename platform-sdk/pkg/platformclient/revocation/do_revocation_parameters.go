// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package revocation

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

// NewDoRevocationParams creates a new DoRevocationParams object
// with the default values initialized.
func NewDoRevocationParams() *DoRevocationParams {
	var ()
	return &DoRevocationParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDoRevocationParamsWithTimeout creates a new DoRevocationParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDoRevocationParamsWithTimeout(timeout time.Duration) *DoRevocationParams {
	var ()
	return &DoRevocationParams{

		timeout: timeout,
	}
}

// NewDoRevocationParamsWithContext creates a new DoRevocationParams object
// with the default values initialized, and the ability to set a context for a request
func NewDoRevocationParamsWithContext(ctx context.Context) *DoRevocationParams {
	var ()
	return &DoRevocationParams{

		Context: ctx,
	}
}

// NewDoRevocationParamsWithHTTPClient creates a new DoRevocationParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDoRevocationParamsWithHTTPClient(client *http.Client) *DoRevocationParams {
	var ()
	return &DoRevocationParams{
		HTTPClient: client,
	}
}

/*DoRevocationParams contains all the parameters to send to the API endpoint
for the do revocation operation typically these are written to a http.Request
*/
type DoRevocationParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.RevocationRequest
	/*Namespace*/
	Namespace string
	/*UserID*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the do revocation params
func (o *DoRevocationParams) WithTimeout(timeout time.Duration) *DoRevocationParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the do revocation params
func (o *DoRevocationParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the do revocation params
func (o *DoRevocationParams) WithContext(ctx context.Context) *DoRevocationParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the do revocation params
func (o *DoRevocationParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the do revocation params
func (o *DoRevocationParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the do revocation params
func (o *DoRevocationParams) WithHTTPClient(client *http.Client) *DoRevocationParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the do revocation params
func (o *DoRevocationParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the do revocation params
func (o *DoRevocationParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the do revocation params
func (o *DoRevocationParams) WithBody(body *platformclientmodels.RevocationRequest) *DoRevocationParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the do revocation params
func (o *DoRevocationParams) SetBody(body *platformclientmodels.RevocationRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the do revocation params
func (o *DoRevocationParams) WithNamespace(namespace string) *DoRevocationParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the do revocation params
func (o *DoRevocationParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the do revocation params
func (o *DoRevocationParams) WithUserID(userID string) *DoRevocationParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the do revocation params
func (o *DoRevocationParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *DoRevocationParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
