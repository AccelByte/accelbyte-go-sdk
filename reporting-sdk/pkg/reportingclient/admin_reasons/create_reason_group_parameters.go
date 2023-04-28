// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_reasons

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/reporting-sdk/pkg/reportingclientmodels"
)

// NewCreateReasonGroupParams creates a new CreateReasonGroupParams object
// with the default values initialized.
func NewCreateReasonGroupParams() *CreateReasonGroupParams {
	var ()
	return &CreateReasonGroupParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCreateReasonGroupParamsWithTimeout creates a new CreateReasonGroupParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCreateReasonGroupParamsWithTimeout(timeout time.Duration) *CreateReasonGroupParams {
	var ()
	return &CreateReasonGroupParams{

		timeout: timeout,
	}
}

// NewCreateReasonGroupParamsWithContext creates a new CreateReasonGroupParams object
// with the default values initialized, and the ability to set a context for a request
func NewCreateReasonGroupParamsWithContext(ctx context.Context) *CreateReasonGroupParams {
	var ()
	return &CreateReasonGroupParams{

		Context: ctx,
	}
}

// NewCreateReasonGroupParamsWithHTTPClient creates a new CreateReasonGroupParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCreateReasonGroupParamsWithHTTPClient(client *http.Client) *CreateReasonGroupParams {
	var ()
	return &CreateReasonGroupParams{
		HTTPClient: client,
	}
}

/*CreateReasonGroupParams contains all the parameters to send to the API endpoint
for the create reason group operation typically these are written to a http.Request
*/
type CreateReasonGroupParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *reportingclientmodels.RestapiCreateReasonGroupRequest
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the create reason group params
func (o *CreateReasonGroupParams) WithTimeout(timeout time.Duration) *CreateReasonGroupParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the create reason group params
func (o *CreateReasonGroupParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the create reason group params
func (o *CreateReasonGroupParams) WithContext(ctx context.Context) *CreateReasonGroupParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the create reason group params
func (o *CreateReasonGroupParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the create reason group params
func (o *CreateReasonGroupParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the create reason group params
func (o *CreateReasonGroupParams) WithHTTPClient(client *http.Client) *CreateReasonGroupParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the create reason group params
func (o *CreateReasonGroupParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the create reason group params
func (o *CreateReasonGroupParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the create reason group params
func (o *CreateReasonGroupParams) WithBody(body *reportingclientmodels.RestapiCreateReasonGroupRequest) *CreateReasonGroupParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the create reason group params
func (o *CreateReasonGroupParams) SetBody(body *reportingclientmodels.RestapiCreateReasonGroupRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the create reason group params
func (o *CreateReasonGroupParams) WithNamespace(namespace string) *CreateReasonGroupParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the create reason group params
func (o *CreateReasonGroupParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *CreateReasonGroupParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
