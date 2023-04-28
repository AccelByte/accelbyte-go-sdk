// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package party

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclientmodels"
)

// NewPublicCreatePartyParams creates a new PublicCreatePartyParams object
// with the default values initialized.
func NewPublicCreatePartyParams() *PublicCreatePartyParams {
	var ()
	return &PublicCreatePartyParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicCreatePartyParamsWithTimeout creates a new PublicCreatePartyParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicCreatePartyParamsWithTimeout(timeout time.Duration) *PublicCreatePartyParams {
	var ()
	return &PublicCreatePartyParams{

		timeout: timeout,
	}
}

// NewPublicCreatePartyParamsWithContext creates a new PublicCreatePartyParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicCreatePartyParamsWithContext(ctx context.Context) *PublicCreatePartyParams {
	var ()
	return &PublicCreatePartyParams{

		Context: ctx,
	}
}

// NewPublicCreatePartyParamsWithHTTPClient creates a new PublicCreatePartyParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicCreatePartyParamsWithHTTPClient(client *http.Client) *PublicCreatePartyParams {
	var ()
	return &PublicCreatePartyParams{
		HTTPClient: client,
	}
}

/*PublicCreatePartyParams contains all the parameters to send to the API endpoint
for the public create party operation typically these are written to a http.Request
*/
type PublicCreatePartyParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *sessionclientmodels.ApimodelsCreatePartyRequest
	/*Namespace
	  Namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public create party params
func (o *PublicCreatePartyParams) WithTimeout(timeout time.Duration) *PublicCreatePartyParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public create party params
func (o *PublicCreatePartyParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public create party params
func (o *PublicCreatePartyParams) WithContext(ctx context.Context) *PublicCreatePartyParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public create party params
func (o *PublicCreatePartyParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public create party params
func (o *PublicCreatePartyParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public create party params
func (o *PublicCreatePartyParams) WithHTTPClient(client *http.Client) *PublicCreatePartyParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public create party params
func (o *PublicCreatePartyParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public create party params
func (o *PublicCreatePartyParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the public create party params
func (o *PublicCreatePartyParams) WithBody(body *sessionclientmodels.ApimodelsCreatePartyRequest) *PublicCreatePartyParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public create party params
func (o *PublicCreatePartyParams) SetBody(body *sessionclientmodels.ApimodelsCreatePartyRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the public create party params
func (o *PublicCreatePartyParams) WithNamespace(namespace string) *PublicCreatePartyParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public create party params
func (o *PublicCreatePartyParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PublicCreatePartyParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
