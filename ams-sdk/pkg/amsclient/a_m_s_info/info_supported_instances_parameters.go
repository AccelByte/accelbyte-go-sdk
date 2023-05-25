// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package a_m_s_info

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

// NewInfoSupportedInstancesParams creates a new InfoSupportedInstancesParams object
// with the default values initialized.
func NewInfoSupportedInstancesParams() *InfoSupportedInstancesParams {
	var ()
	return &InfoSupportedInstancesParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewInfoSupportedInstancesParamsWithTimeout creates a new InfoSupportedInstancesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewInfoSupportedInstancesParamsWithTimeout(timeout time.Duration) *InfoSupportedInstancesParams {
	var ()
	return &InfoSupportedInstancesParams{

		timeout: timeout,
	}
}

// NewInfoSupportedInstancesParamsWithContext creates a new InfoSupportedInstancesParams object
// with the default values initialized, and the ability to set a context for a request
func NewInfoSupportedInstancesParamsWithContext(ctx context.Context) *InfoSupportedInstancesParams {
	var ()
	return &InfoSupportedInstancesParams{

		Context: ctx,
	}
}

// NewInfoSupportedInstancesParamsWithHTTPClient creates a new InfoSupportedInstancesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewInfoSupportedInstancesParamsWithHTTPClient(client *http.Client) *InfoSupportedInstancesParams {
	var ()
	return &InfoSupportedInstancesParams{
		HTTPClient: client,
	}
}

/*InfoSupportedInstancesParams contains all the parameters to send to the API endpoint
for the info supported instances operation typically these are written to a http.Request
*/
type InfoSupportedInstancesParams struct {

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

// WithTimeout adds the timeout to the info supported instances params
func (o *InfoSupportedInstancesParams) WithTimeout(timeout time.Duration) *InfoSupportedInstancesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the info supported instances params
func (o *InfoSupportedInstancesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the info supported instances params
func (o *InfoSupportedInstancesParams) WithContext(ctx context.Context) *InfoSupportedInstancesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the info supported instances params
func (o *InfoSupportedInstancesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the info supported instances params
func (o *InfoSupportedInstancesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the info supported instances params
func (o *InfoSupportedInstancesParams) WithHTTPClient(client *http.Client) *InfoSupportedInstancesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the info supported instances params
func (o *InfoSupportedInstancesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the info supported instances params
func (o *InfoSupportedInstancesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the info supported instances params
func (o *InfoSupportedInstancesParams) WithNamespace(namespace string) *InfoSupportedInstancesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the info supported instances params
func (o *InfoSupportedInstancesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *InfoSupportedInstancesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
