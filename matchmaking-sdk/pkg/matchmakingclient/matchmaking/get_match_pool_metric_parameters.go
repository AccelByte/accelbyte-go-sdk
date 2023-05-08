// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package matchmaking

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

// NewGetMatchPoolMetricParams creates a new GetMatchPoolMetricParams object
// with the default values initialized.
func NewGetMatchPoolMetricParams() *GetMatchPoolMetricParams {
	var ()
	return &GetMatchPoolMetricParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetMatchPoolMetricParamsWithTimeout creates a new GetMatchPoolMetricParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetMatchPoolMetricParamsWithTimeout(timeout time.Duration) *GetMatchPoolMetricParams {
	var ()
	return &GetMatchPoolMetricParams{

		timeout: timeout,
	}
}

// NewGetMatchPoolMetricParamsWithContext creates a new GetMatchPoolMetricParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetMatchPoolMetricParamsWithContext(ctx context.Context) *GetMatchPoolMetricParams {
	var ()
	return &GetMatchPoolMetricParams{

		Context: ctx,
	}
}

// NewGetMatchPoolMetricParamsWithHTTPClient creates a new GetMatchPoolMetricParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetMatchPoolMetricParamsWithHTTPClient(client *http.Client) *GetMatchPoolMetricParams {
	var ()
	return &GetMatchPoolMetricParams{
		HTTPClient: client,
	}
}

/*GetMatchPoolMetricParams contains all the parameters to send to the API endpoint
for the get match pool metric operation typically these are written to a http.Request
*/
type GetMatchPoolMetricParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ChannelName
	  channel name, accept snake_case, lowercase, and numeric

	*/
	ChannelName string
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get match pool metric params
func (o *GetMatchPoolMetricParams) WithTimeout(timeout time.Duration) *GetMatchPoolMetricParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get match pool metric params
func (o *GetMatchPoolMetricParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get match pool metric params
func (o *GetMatchPoolMetricParams) WithContext(ctx context.Context) *GetMatchPoolMetricParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get match pool metric params
func (o *GetMatchPoolMetricParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get match pool metric params
func (o *GetMatchPoolMetricParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get match pool metric params
func (o *GetMatchPoolMetricParams) WithHTTPClient(client *http.Client) *GetMatchPoolMetricParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get match pool metric params
func (o *GetMatchPoolMetricParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get match pool metric params
func (o *GetMatchPoolMetricParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithChannelName adds the channelName to the get match pool metric params
func (o *GetMatchPoolMetricParams) WithChannelName(channelName string) *GetMatchPoolMetricParams {
	o.SetChannelName(channelName)
	return o
}

// SetChannelName adds the channelName to the get match pool metric params
func (o *GetMatchPoolMetricParams) SetChannelName(channelName string) {
	o.ChannelName = channelName
}

// WithNamespace adds the namespace to the get match pool metric params
func (o *GetMatchPoolMetricParams) WithNamespace(namespace string) *GetMatchPoolMetricParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get match pool metric params
func (o *GetMatchPoolMetricParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetMatchPoolMetricParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param channelName
	if err := r.SetPathParam("channelName", o.ChannelName); err != nil {
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
