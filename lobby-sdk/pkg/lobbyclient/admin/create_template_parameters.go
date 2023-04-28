// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
)

// NewCreateTemplateParams creates a new CreateTemplateParams object
// with the default values initialized.
func NewCreateTemplateParams() *CreateTemplateParams {
	var ()
	return &CreateTemplateParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCreateTemplateParamsWithTimeout creates a new CreateTemplateParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCreateTemplateParamsWithTimeout(timeout time.Duration) *CreateTemplateParams {
	var ()
	return &CreateTemplateParams{

		timeout: timeout,
	}
}

// NewCreateTemplateParamsWithContext creates a new CreateTemplateParams object
// with the default values initialized, and the ability to set a context for a request
func NewCreateTemplateParamsWithContext(ctx context.Context) *CreateTemplateParams {
	var ()
	return &CreateTemplateParams{

		Context: ctx,
	}
}

// NewCreateTemplateParamsWithHTTPClient creates a new CreateTemplateParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCreateTemplateParamsWithHTTPClient(client *http.Client) *CreateTemplateParams {
	var ()
	return &CreateTemplateParams{
		HTTPClient: client,
	}
}

/*CreateTemplateParams contains all the parameters to send to the API endpoint
for the create template operation typically these are written to a http.Request
*/
type CreateTemplateParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *lobbyclientmodels.ModelCreateTemplateRequest
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the create template params
func (o *CreateTemplateParams) WithTimeout(timeout time.Duration) *CreateTemplateParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the create template params
func (o *CreateTemplateParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the create template params
func (o *CreateTemplateParams) WithContext(ctx context.Context) *CreateTemplateParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the create template params
func (o *CreateTemplateParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the create template params
func (o *CreateTemplateParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the create template params
func (o *CreateTemplateParams) WithHTTPClient(client *http.Client) *CreateTemplateParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the create template params
func (o *CreateTemplateParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the create template params
func (o *CreateTemplateParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the create template params
func (o *CreateTemplateParams) WithBody(body *lobbyclientmodels.ModelCreateTemplateRequest) *CreateTemplateParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the create template params
func (o *CreateTemplateParams) SetBody(body *lobbyclientmodels.ModelCreateTemplateRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the create template params
func (o *CreateTemplateParams) WithNamespace(namespace string) *CreateTemplateParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the create template params
func (o *CreateTemplateParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *CreateTemplateParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
