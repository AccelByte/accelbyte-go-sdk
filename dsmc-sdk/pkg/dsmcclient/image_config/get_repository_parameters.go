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
)

// NewGetRepositoryParams creates a new GetRepositoryParams object
// with the default values initialized.
func NewGetRepositoryParams() *GetRepositoryParams {
	var ()
	return &GetRepositoryParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetRepositoryParamsWithTimeout creates a new GetRepositoryParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetRepositoryParamsWithTimeout(timeout time.Duration) *GetRepositoryParams {
	var ()
	return &GetRepositoryParams{

		timeout: timeout,
	}
}

// NewGetRepositoryParamsWithContext creates a new GetRepositoryParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetRepositoryParamsWithContext(ctx context.Context) *GetRepositoryParams {
	var ()
	return &GetRepositoryParams{

		Context: ctx,
	}
}

// NewGetRepositoryParamsWithHTTPClient creates a new GetRepositoryParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetRepositoryParamsWithHTTPClient(client *http.Client) *GetRepositoryParams {
	var ()
	return &GetRepositoryParams{
		HTTPClient: client,
	}
}

/*GetRepositoryParams contains all the parameters to send to the API endpoint
for the get repository operation typically these are written to a http.Request
*/
type GetRepositoryParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get repository params
func (o *GetRepositoryParams) WithTimeout(timeout time.Duration) *GetRepositoryParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get repository params
func (o *GetRepositoryParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get repository params
func (o *GetRepositoryParams) WithContext(ctx context.Context) *GetRepositoryParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get repository params
func (o *GetRepositoryParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get repository params
func (o *GetRepositoryParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get repository params
func (o *GetRepositoryParams) WithHTTPClient(client *http.Client) *GetRepositoryParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get repository params
func (o *GetRepositoryParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get repository params
func (o *GetRepositoryParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the get repository params
func (o *GetRepositoryParams) WithNamespace(namespace string) *GetRepositoryParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get repository params
func (o *GetRepositoryParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetRepositoryParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
