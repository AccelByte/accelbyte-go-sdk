// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package clients

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// NewCreateClientByNamespaceParams creates a new CreateClientByNamespaceParams object
// with the default values initialized.
func NewCreateClientByNamespaceParams() *CreateClientByNamespaceParams {
	var ()
	return &CreateClientByNamespaceParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCreateClientByNamespaceParamsWithTimeout creates a new CreateClientByNamespaceParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCreateClientByNamespaceParamsWithTimeout(timeout time.Duration) *CreateClientByNamespaceParams {
	var ()
	return &CreateClientByNamespaceParams{

		timeout: timeout,
	}
}

// NewCreateClientByNamespaceParamsWithContext creates a new CreateClientByNamespaceParams object
// with the default values initialized, and the ability to set a context for a request
func NewCreateClientByNamespaceParamsWithContext(ctx context.Context) *CreateClientByNamespaceParams {
	var ()
	return &CreateClientByNamespaceParams{

		Context: ctx,
	}
}

// NewCreateClientByNamespaceParamsWithHTTPClient creates a new CreateClientByNamespaceParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCreateClientByNamespaceParamsWithHTTPClient(client *http.Client) *CreateClientByNamespaceParams {
	var ()
	return &CreateClientByNamespaceParams{
		HTTPClient: client,
	}
}

/*CreateClientByNamespaceParams contains all the parameters to send to the API endpoint
for the create client by namespace operation typically these are written to a http.Request
*/
type CreateClientByNamespaceParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ClientmodelClientCreateRequest
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the create client by namespace params
func (o *CreateClientByNamespaceParams) WithTimeout(timeout time.Duration) *CreateClientByNamespaceParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the create client by namespace params
func (o *CreateClientByNamespaceParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the create client by namespace params
func (o *CreateClientByNamespaceParams) WithContext(ctx context.Context) *CreateClientByNamespaceParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the create client by namespace params
func (o *CreateClientByNamespaceParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the create client by namespace params
func (o *CreateClientByNamespaceParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the create client by namespace params
func (o *CreateClientByNamespaceParams) WithHTTPClient(client *http.Client) *CreateClientByNamespaceParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the create client by namespace params
func (o *CreateClientByNamespaceParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the create client by namespace params
func (o *CreateClientByNamespaceParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the create client by namespace params
func (o *CreateClientByNamespaceParams) WithBody(body *iamclientmodels.ClientmodelClientCreateRequest) *CreateClientByNamespaceParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the create client by namespace params
func (o *CreateClientByNamespaceParams) SetBody(body *iamclientmodels.ClientmodelClientCreateRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the create client by namespace params
func (o *CreateClientByNamespaceParams) WithNamespace(namespace string) *CreateClientByNamespaceParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the create client by namespace params
func (o *CreateClientByNamespaceParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *CreateClientByNamespaceParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
