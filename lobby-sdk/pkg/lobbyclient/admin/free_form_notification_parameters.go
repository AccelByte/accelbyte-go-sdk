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

// NewFreeFormNotificationParams creates a new FreeFormNotificationParams object
// with the default values initialized.
func NewFreeFormNotificationParams() *FreeFormNotificationParams {
	var ()
	return &FreeFormNotificationParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewFreeFormNotificationParamsWithTimeout creates a new FreeFormNotificationParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewFreeFormNotificationParamsWithTimeout(timeout time.Duration) *FreeFormNotificationParams {
	var ()
	return &FreeFormNotificationParams{

		timeout: timeout,
	}
}

// NewFreeFormNotificationParamsWithContext creates a new FreeFormNotificationParams object
// with the default values initialized, and the ability to set a context for a request
func NewFreeFormNotificationParamsWithContext(ctx context.Context) *FreeFormNotificationParams {
	var ()
	return &FreeFormNotificationParams{

		Context: ctx,
	}
}

// NewFreeFormNotificationParamsWithHTTPClient creates a new FreeFormNotificationParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewFreeFormNotificationParamsWithHTTPClient(client *http.Client) *FreeFormNotificationParams {
	var ()
	return &FreeFormNotificationParams{
		HTTPClient: client,
	}
}

/*FreeFormNotificationParams contains all the parameters to send to the API endpoint
for the free form notification operation typically these are written to a http.Request
*/
type FreeFormNotificationParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *lobbyclientmodels.ModelFreeFormNotificationRequest
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the free form notification params
func (o *FreeFormNotificationParams) WithTimeout(timeout time.Duration) *FreeFormNotificationParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the free form notification params
func (o *FreeFormNotificationParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the free form notification params
func (o *FreeFormNotificationParams) WithContext(ctx context.Context) *FreeFormNotificationParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the free form notification params
func (o *FreeFormNotificationParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the free form notification params
func (o *FreeFormNotificationParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the free form notification params
func (o *FreeFormNotificationParams) WithHTTPClient(client *http.Client) *FreeFormNotificationParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the free form notification params
func (o *FreeFormNotificationParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the free form notification params
func (o *FreeFormNotificationParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the free form notification params
func (o *FreeFormNotificationParams) WithBody(body *lobbyclientmodels.ModelFreeFormNotificationRequest) *FreeFormNotificationParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the free form notification params
func (o *FreeFormNotificationParams) SetBody(body *lobbyclientmodels.ModelFreeFormNotificationRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the free form notification params
func (o *FreeFormNotificationParams) WithNamespace(namespace string) *FreeFormNotificationParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the free form notification params
func (o *FreeFormNotificationParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *FreeFormNotificationParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
