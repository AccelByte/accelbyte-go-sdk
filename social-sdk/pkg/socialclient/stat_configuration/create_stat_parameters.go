// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package stat_configuration

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclientmodels"
)

// NewCreateStatParams creates a new CreateStatParams object
// with the default values initialized.
func NewCreateStatParams() *CreateStatParams {
	var ()
	return &CreateStatParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCreateStatParamsWithTimeout creates a new CreateStatParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCreateStatParamsWithTimeout(timeout time.Duration) *CreateStatParams {
	var ()
	return &CreateStatParams{

		timeout: timeout,
	}
}

// NewCreateStatParamsWithContext creates a new CreateStatParams object
// with the default values initialized, and the ability to set a context for a request
func NewCreateStatParamsWithContext(ctx context.Context) *CreateStatParams {
	var ()
	return &CreateStatParams{

		Context: ctx,
	}
}

// NewCreateStatParamsWithHTTPClient creates a new CreateStatParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCreateStatParamsWithHTTPClient(client *http.Client) *CreateStatParams {
	var ()
	return &CreateStatParams{
		HTTPClient: client,
	}
}

/*CreateStatParams contains all the parameters to send to the API endpoint
for the create stat operation typically these are written to a http.Request
*/
type CreateStatParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *socialclientmodels.StatCreate
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the create stat params
func (o *CreateStatParams) WithTimeout(timeout time.Duration) *CreateStatParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the create stat params
func (o *CreateStatParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the create stat params
func (o *CreateStatParams) WithContext(ctx context.Context) *CreateStatParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the create stat params
func (o *CreateStatParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the create stat params
func (o *CreateStatParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the create stat params
func (o *CreateStatParams) WithHTTPClient(client *http.Client) *CreateStatParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the create stat params
func (o *CreateStatParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the create stat params
func (o *CreateStatParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the create stat params
func (o *CreateStatParams) WithBody(body *socialclientmodels.StatCreate) *CreateStatParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the create stat params
func (o *CreateStatParams) SetBody(body *socialclientmodels.StatCreate) {
	o.Body = body
}

// WithNamespace adds the namespace to the create stat params
func (o *CreateStatParams) WithNamespace(namespace string) *CreateStatParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the create stat params
func (o *CreateStatParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *CreateStatParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
