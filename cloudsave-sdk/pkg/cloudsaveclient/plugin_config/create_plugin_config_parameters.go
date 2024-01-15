// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package plugin_config

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
)

// NewCreatePluginConfigParams creates a new CreatePluginConfigParams object
// with the default values initialized.
func NewCreatePluginConfigParams() *CreatePluginConfigParams {
	var ()
	return &CreatePluginConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCreatePluginConfigParamsWithTimeout creates a new CreatePluginConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCreatePluginConfigParamsWithTimeout(timeout time.Duration) *CreatePluginConfigParams {
	var ()
	return &CreatePluginConfigParams{

		timeout: timeout,
	}
}

// NewCreatePluginConfigParamsWithContext creates a new CreatePluginConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewCreatePluginConfigParamsWithContext(ctx context.Context) *CreatePluginConfigParams {
	var ()
	return &CreatePluginConfigParams{

		Context: ctx,
	}
}

// NewCreatePluginConfigParamsWithHTTPClient creates a new CreatePluginConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCreatePluginConfigParamsWithHTTPClient(client *http.Client) *CreatePluginConfigParams {
	var ()
	return &CreatePluginConfigParams{
		HTTPClient: client,
	}
}

/*CreatePluginConfigParams contains all the parameters to send to the API endpoint
for the create plugin config operation typically these are written to a http.Request
*/
type CreatePluginConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *cloudsaveclientmodels.ModelsPluginRequest
	/*Namespace
	  namespace of the game, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the create plugin config params
func (o *CreatePluginConfigParams) WithTimeout(timeout time.Duration) *CreatePluginConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the create plugin config params
func (o *CreatePluginConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the create plugin config params
func (o *CreatePluginConfigParams) WithContext(ctx context.Context) *CreatePluginConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the create plugin config params
func (o *CreatePluginConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the create plugin config params
func (o *CreatePluginConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the create plugin config params
func (o *CreatePluginConfigParams) WithHTTPClient(client *http.Client) *CreatePluginConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the create plugin config params
func (o *CreatePluginConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the create plugin config params
func (o *CreatePluginConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the create plugin config params
func (o *CreatePluginConfigParams) WithBody(body *cloudsaveclientmodels.ModelsPluginRequest) *CreatePluginConfigParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the create plugin config params
func (o *CreatePluginConfigParams) SetBody(body *cloudsaveclientmodels.ModelsPluginRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the create plugin config params
func (o *CreatePluginConfigParams) WithNamespace(namespace string) *CreatePluginConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the create plugin config params
func (o *CreatePluginConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *CreatePluginConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
