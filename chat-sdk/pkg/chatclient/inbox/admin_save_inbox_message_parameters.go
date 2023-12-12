// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package inbox

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/chat-sdk/pkg/chatclientmodels"
)

// NewAdminSaveInboxMessageParams creates a new AdminSaveInboxMessageParams object
// with the default values initialized.
func NewAdminSaveInboxMessageParams() *AdminSaveInboxMessageParams {
	var ()
	return &AdminSaveInboxMessageParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminSaveInboxMessageParamsWithTimeout creates a new AdminSaveInboxMessageParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminSaveInboxMessageParamsWithTimeout(timeout time.Duration) *AdminSaveInboxMessageParams {
	var ()
	return &AdminSaveInboxMessageParams{

		timeout: timeout,
	}
}

// NewAdminSaveInboxMessageParamsWithContext creates a new AdminSaveInboxMessageParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminSaveInboxMessageParamsWithContext(ctx context.Context) *AdminSaveInboxMessageParams {
	var ()
	return &AdminSaveInboxMessageParams{

		Context: ctx,
	}
}

// NewAdminSaveInboxMessageParamsWithHTTPClient creates a new AdminSaveInboxMessageParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminSaveInboxMessageParamsWithHTTPClient(client *http.Client) *AdminSaveInboxMessageParams {
	var ()
	return &AdminSaveInboxMessageParams{
		HTTPClient: client,
	}
}

/*AdminSaveInboxMessageParams contains all the parameters to send to the API endpoint
for the admin save inbox message operation typically these are written to a http.Request
*/
type AdminSaveInboxMessageParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *chatclientmodels.ModelsSaveInboxMessageRequest
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin save inbox message params
func (o *AdminSaveInboxMessageParams) WithTimeout(timeout time.Duration) *AdminSaveInboxMessageParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin save inbox message params
func (o *AdminSaveInboxMessageParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin save inbox message params
func (o *AdminSaveInboxMessageParams) WithContext(ctx context.Context) *AdminSaveInboxMessageParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin save inbox message params
func (o *AdminSaveInboxMessageParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin save inbox message params
func (o *AdminSaveInboxMessageParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin save inbox message params
func (o *AdminSaveInboxMessageParams) WithHTTPClient(client *http.Client) *AdminSaveInboxMessageParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin save inbox message params
func (o *AdminSaveInboxMessageParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin save inbox message params
func (o *AdminSaveInboxMessageParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the admin save inbox message params
func (o *AdminSaveInboxMessageParams) WithBody(body *chatclientmodels.ModelsSaveInboxMessageRequest) *AdminSaveInboxMessageParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin save inbox message params
func (o *AdminSaveInboxMessageParams) SetBody(body *chatclientmodels.ModelsSaveInboxMessageRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin save inbox message params
func (o *AdminSaveInboxMessageParams) WithNamespace(namespace string) *AdminSaveInboxMessageParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin save inbox message params
func (o *AdminSaveInboxMessageParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminSaveInboxMessageParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
