// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package pod_config

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

// NewCreatePodConfigClientParams creates a new CreatePodConfigClientParams object
// with the default values initialized.
func NewCreatePodConfigClientParams() *CreatePodConfigClientParams {
	var ()
	return &CreatePodConfigClientParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCreatePodConfigClientParamsWithTimeout creates a new CreatePodConfigClientParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCreatePodConfigClientParamsWithTimeout(timeout time.Duration) *CreatePodConfigClientParams {
	var ()
	return &CreatePodConfigClientParams{

		timeout: timeout,
	}
}

// NewCreatePodConfigClientParamsWithContext creates a new CreatePodConfigClientParams object
// with the default values initialized, and the ability to set a context for a request
func NewCreatePodConfigClientParamsWithContext(ctx context.Context) *CreatePodConfigClientParams {
	var ()
	return &CreatePodConfigClientParams{

		Context: ctx,
	}
}

// NewCreatePodConfigClientParamsWithHTTPClient creates a new CreatePodConfigClientParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCreatePodConfigClientParamsWithHTTPClient(client *http.Client) *CreatePodConfigClientParams {
	var ()
	return &CreatePodConfigClientParams{
		HTTPClient: client,
	}
}

/*CreatePodConfigClientParams contains all the parameters to send to the API endpoint
for the create pod config client operation typically these are written to a http.Request
*/
type CreatePodConfigClientParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *dsmcclientmodels.ModelsCreatePodConfigRequest
	/*Name
	  pod name

	*/
	Name string
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the create pod config client params
func (o *CreatePodConfigClientParams) WithTimeout(timeout time.Duration) *CreatePodConfigClientParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the create pod config client params
func (o *CreatePodConfigClientParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the create pod config client params
func (o *CreatePodConfigClientParams) WithContext(ctx context.Context) *CreatePodConfigClientParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the create pod config client params
func (o *CreatePodConfigClientParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the create pod config client params
func (o *CreatePodConfigClientParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the create pod config client params
func (o *CreatePodConfigClientParams) WithHTTPClient(client *http.Client) *CreatePodConfigClientParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the create pod config client params
func (o *CreatePodConfigClientParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the create pod config client params
func (o *CreatePodConfigClientParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the create pod config client params
func (o *CreatePodConfigClientParams) WithBody(body *dsmcclientmodels.ModelsCreatePodConfigRequest) *CreatePodConfigClientParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the create pod config client params
func (o *CreatePodConfigClientParams) SetBody(body *dsmcclientmodels.ModelsCreatePodConfigRequest) {
	o.Body = body
}

// WithName adds the name to the create pod config client params
func (o *CreatePodConfigClientParams) WithName(name string) *CreatePodConfigClientParams {
	o.SetName(name)
	return o
}

// SetName adds the name to the create pod config client params
func (o *CreatePodConfigClientParams) SetName(name string) {
	o.Name = name
}

// WithNamespace adds the namespace to the create pod config client params
func (o *CreatePodConfigClientParams) WithNamespace(namespace string) *CreatePodConfigClientParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the create pod config client params
func (o *CreatePodConfigClientParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *CreatePodConfigClientParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param name
	if err := r.SetPathParam("name", o.Name); err != nil {
		return err
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