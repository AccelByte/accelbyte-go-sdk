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

// NewGetStatDataParams creates a new GetStatDataParams object
// with the default values initialized.
func NewGetStatDataParams() *GetStatDataParams {
	var ()
	return &GetStatDataParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetStatDataParamsWithTimeout creates a new GetStatDataParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetStatDataParamsWithTimeout(timeout time.Duration) *GetStatDataParams {
	var ()
	return &GetStatDataParams{

		timeout: timeout,
	}
}

// NewGetStatDataParamsWithContext creates a new GetStatDataParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetStatDataParamsWithContext(ctx context.Context) *GetStatDataParams {
	var ()
	return &GetStatDataParams{

		Context: ctx,
	}
}

// NewGetStatDataParamsWithHTTPClient creates a new GetStatDataParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetStatDataParamsWithHTTPClient(client *http.Client) *GetStatDataParams {
	var ()
	return &GetStatDataParams{
		HTTPClient: client,
	}
}

/*GetStatDataParams contains all the parameters to send to the API endpoint
for the get stat data operation typically these are written to a http.Request
*/
type GetStatDataParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ChannelName
	  channel name, accept snake_case, lowercase, and numeric

	*/
	ChannelName string
	/*Namespace
	  namespace of the game, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get stat data params
func (o *GetStatDataParams) WithTimeout(timeout time.Duration) *GetStatDataParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get stat data params
func (o *GetStatDataParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get stat data params
func (o *GetStatDataParams) WithContext(ctx context.Context) *GetStatDataParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get stat data params
func (o *GetStatDataParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get stat data params
func (o *GetStatDataParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get stat data params
func (o *GetStatDataParams) WithHTTPClient(client *http.Client) *GetStatDataParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get stat data params
func (o *GetStatDataParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get stat data params
func (o *GetStatDataParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithChannelName adds the channelName to the get stat data params
func (o *GetStatDataParams) WithChannelName(channelName string) *GetStatDataParams {
	o.SetChannelName(channelName)
	return o
}

// SetChannelName adds the channelName to the get stat data params
func (o *GetStatDataParams) SetChannelName(channelName string) {
	o.ChannelName = channelName
}

// WithNamespace adds the namespace to the get stat data params
func (o *GetStatDataParams) WithNamespace(namespace string) *GetStatDataParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get stat data params
func (o *GetStatDataParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetStatDataParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
