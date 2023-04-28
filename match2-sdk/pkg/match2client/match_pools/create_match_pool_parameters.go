// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package match_pools

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/match2-sdk/pkg/match2clientmodels"
)

// NewCreateMatchPoolParams creates a new CreateMatchPoolParams object
// with the default values initialized.
func NewCreateMatchPoolParams() *CreateMatchPoolParams {
	var ()
	return &CreateMatchPoolParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCreateMatchPoolParamsWithTimeout creates a new CreateMatchPoolParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCreateMatchPoolParamsWithTimeout(timeout time.Duration) *CreateMatchPoolParams {
	var ()
	return &CreateMatchPoolParams{

		timeout: timeout,
	}
}

// NewCreateMatchPoolParamsWithContext creates a new CreateMatchPoolParams object
// with the default values initialized, and the ability to set a context for a request
func NewCreateMatchPoolParamsWithContext(ctx context.Context) *CreateMatchPoolParams {
	var ()
	return &CreateMatchPoolParams{

		Context: ctx,
	}
}

// NewCreateMatchPoolParamsWithHTTPClient creates a new CreateMatchPoolParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCreateMatchPoolParamsWithHTTPClient(client *http.Client) *CreateMatchPoolParams {
	var ()
	return &CreateMatchPoolParams{
		HTTPClient: client,
	}
}

/*CreateMatchPoolParams contains all the parameters to send to the API endpoint
for the create match pool operation typically these are written to a http.Request
*/
type CreateMatchPoolParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *match2clientmodels.APIMatchPool
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the create match pool params
func (o *CreateMatchPoolParams) WithTimeout(timeout time.Duration) *CreateMatchPoolParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the create match pool params
func (o *CreateMatchPoolParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the create match pool params
func (o *CreateMatchPoolParams) WithContext(ctx context.Context) *CreateMatchPoolParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the create match pool params
func (o *CreateMatchPoolParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the create match pool params
func (o *CreateMatchPoolParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the create match pool params
func (o *CreateMatchPoolParams) WithHTTPClient(client *http.Client) *CreateMatchPoolParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the create match pool params
func (o *CreateMatchPoolParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the create match pool params
func (o *CreateMatchPoolParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the create match pool params
func (o *CreateMatchPoolParams) WithBody(body *match2clientmodels.APIMatchPool) *CreateMatchPoolParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the create match pool params
func (o *CreateMatchPoolParams) SetBody(body *match2clientmodels.APIMatchPool) {
	o.Body = body
}

// WithNamespace adds the namespace to the create match pool params
func (o *CreateMatchPoolParams) WithNamespace(namespace string) *CreateMatchPoolParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the create match pool params
func (o *CreateMatchPoolParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *CreateMatchPoolParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
