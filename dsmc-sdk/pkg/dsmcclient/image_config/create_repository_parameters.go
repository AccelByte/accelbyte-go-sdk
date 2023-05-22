// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package image_config

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclientmodels"
)

// NewCreateRepositoryParams creates a new CreateRepositoryParams object
// with the default values initialized.
func NewCreateRepositoryParams() *CreateRepositoryParams {
	var ()
	return &CreateRepositoryParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCreateRepositoryParamsWithTimeout creates a new CreateRepositoryParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCreateRepositoryParamsWithTimeout(timeout time.Duration) *CreateRepositoryParams {
	var ()
	return &CreateRepositoryParams{

		timeout: timeout,
	}
}

// NewCreateRepositoryParamsWithContext creates a new CreateRepositoryParams object
// with the default values initialized, and the ability to set a context for a request
func NewCreateRepositoryParamsWithContext(ctx context.Context) *CreateRepositoryParams {
	var ()
	return &CreateRepositoryParams{

		Context: ctx,
	}
}

// NewCreateRepositoryParamsWithHTTPClient creates a new CreateRepositoryParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCreateRepositoryParamsWithHTTPClient(client *http.Client) *CreateRepositoryParams {
	var ()
	return &CreateRepositoryParams{
		HTTPClient: client,
	}
}

/*CreateRepositoryParams contains all the parameters to send to the API endpoint
for the create repository operation typically these are written to a http.Request
*/
type CreateRepositoryParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *dsmcclientmodels.ModelsCreateRepositoryRequest

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the create repository params
func (o *CreateRepositoryParams) WithTimeout(timeout time.Duration) *CreateRepositoryParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the create repository params
func (o *CreateRepositoryParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the create repository params
func (o *CreateRepositoryParams) WithContext(ctx context.Context) *CreateRepositoryParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the create repository params
func (o *CreateRepositoryParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the create repository params
func (o *CreateRepositoryParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the create repository params
func (o *CreateRepositoryParams) WithHTTPClient(client *http.Client) *CreateRepositoryParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the create repository params
func (o *CreateRepositoryParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the create repository params
func (o *CreateRepositoryParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the create repository params
func (o *CreateRepositoryParams) WithBody(body *dsmcclientmodels.ModelsCreateRepositoryRequest) *CreateRepositoryParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the create repository params
func (o *CreateRepositoryParams) SetBody(body *dsmcclientmodels.ModelsCreateRepositoryRequest) {
	o.Body = body
}

// WriteToRequest writes these params to a swagger request
func (o *CreateRepositoryParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
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
