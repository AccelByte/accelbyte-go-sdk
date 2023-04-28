// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package order

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

// NewGetOrderStatisticsParams creates a new GetOrderStatisticsParams object
// with the default values initialized.
func NewGetOrderStatisticsParams() *GetOrderStatisticsParams {
	var ()
	return &GetOrderStatisticsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetOrderStatisticsParamsWithTimeout creates a new GetOrderStatisticsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetOrderStatisticsParamsWithTimeout(timeout time.Duration) *GetOrderStatisticsParams {
	var ()
	return &GetOrderStatisticsParams{

		timeout: timeout,
	}
}

// NewGetOrderStatisticsParamsWithContext creates a new GetOrderStatisticsParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetOrderStatisticsParamsWithContext(ctx context.Context) *GetOrderStatisticsParams {
	var ()
	return &GetOrderStatisticsParams{

		Context: ctx,
	}
}

// NewGetOrderStatisticsParamsWithHTTPClient creates a new GetOrderStatisticsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetOrderStatisticsParamsWithHTTPClient(client *http.Client) *GetOrderStatisticsParams {
	var ()
	return &GetOrderStatisticsParams{
		HTTPClient: client,
	}
}

/*GetOrderStatisticsParams contains all the parameters to send to the API endpoint
for the get order statistics operation typically these are written to a http.Request
*/
type GetOrderStatisticsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get order statistics params
func (o *GetOrderStatisticsParams) WithTimeout(timeout time.Duration) *GetOrderStatisticsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get order statistics params
func (o *GetOrderStatisticsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get order statistics params
func (o *GetOrderStatisticsParams) WithContext(ctx context.Context) *GetOrderStatisticsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get order statistics params
func (o *GetOrderStatisticsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get order statistics params
func (o *GetOrderStatisticsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get order statistics params
func (o *GetOrderStatisticsParams) WithHTTPClient(client *http.Client) *GetOrderStatisticsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get order statistics params
func (o *GetOrderStatisticsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get order statistics params
func (o *GetOrderStatisticsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the get order statistics params
func (o *GetOrderStatisticsParams) WithNamespace(namespace string) *GetOrderStatisticsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get order statistics params
func (o *GetOrderStatisticsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetOrderStatisticsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
