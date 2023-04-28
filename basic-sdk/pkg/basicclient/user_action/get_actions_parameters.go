// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package user_action

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

// NewGetActionsParams creates a new GetActionsParams object
// with the default values initialized.
func NewGetActionsParams() *GetActionsParams {
	var ()
	return &GetActionsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetActionsParamsWithTimeout creates a new GetActionsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetActionsParamsWithTimeout(timeout time.Duration) *GetActionsParams {
	var ()
	return &GetActionsParams{

		timeout: timeout,
	}
}

// NewGetActionsParamsWithContext creates a new GetActionsParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetActionsParamsWithContext(ctx context.Context) *GetActionsParams {
	var ()
	return &GetActionsParams{

		Context: ctx,
	}
}

// NewGetActionsParamsWithHTTPClient creates a new GetActionsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetActionsParamsWithHTTPClient(client *http.Client) *GetActionsParams {
	var ()
	return &GetActionsParams{
		HTTPClient: client,
	}
}

/*GetActionsParams contains all the parameters to send to the API endpoint
for the get actions operation typically these are written to a http.Request
*/
type GetActionsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get actions params
func (o *GetActionsParams) WithTimeout(timeout time.Duration) *GetActionsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get actions params
func (o *GetActionsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get actions params
func (o *GetActionsParams) WithContext(ctx context.Context) *GetActionsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get actions params
func (o *GetActionsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get actions params
func (o *GetActionsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get actions params
func (o *GetActionsParams) WithHTTPClient(client *http.Client) *GetActionsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get actions params
func (o *GetActionsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get actions params
func (o *GetActionsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the get actions params
func (o *GetActionsParams) WithNamespace(namespace string) *GetActionsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get actions params
func (o *GetActionsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetActionsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
