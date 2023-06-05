// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package mock_matchmaking

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

// NewCleanAllMocksParams creates a new CleanAllMocksParams object
// with the default values initialized.
func NewCleanAllMocksParams() *CleanAllMocksParams {
	var ()
	return &CleanAllMocksParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCleanAllMocksParamsWithTimeout creates a new CleanAllMocksParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCleanAllMocksParamsWithTimeout(timeout time.Duration) *CleanAllMocksParams {
	var ()
	return &CleanAllMocksParams{

		timeout: timeout,
	}
}

// NewCleanAllMocksParamsWithContext creates a new CleanAllMocksParams object
// with the default values initialized, and the ability to set a context for a request
func NewCleanAllMocksParamsWithContext(ctx context.Context) *CleanAllMocksParams {
	var ()
	return &CleanAllMocksParams{

		Context: ctx,
	}
}

// NewCleanAllMocksParamsWithHTTPClient creates a new CleanAllMocksParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCleanAllMocksParamsWithHTTPClient(client *http.Client) *CleanAllMocksParams {
	var ()
	return &CleanAllMocksParams{
		HTTPClient: client,
	}
}

/*CleanAllMocksParams contains all the parameters to send to the API endpoint
for the clean all mocks operation typically these are written to a http.Request
*/
type CleanAllMocksParams struct {

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

// WithTimeout adds the timeout to the clean all mocks params
func (o *CleanAllMocksParams) WithTimeout(timeout time.Duration) *CleanAllMocksParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the clean all mocks params
func (o *CleanAllMocksParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the clean all mocks params
func (o *CleanAllMocksParams) WithContext(ctx context.Context) *CleanAllMocksParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the clean all mocks params
func (o *CleanAllMocksParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the clean all mocks params
func (o *CleanAllMocksParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the clean all mocks params
func (o *CleanAllMocksParams) WithHTTPClient(client *http.Client) *CleanAllMocksParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the clean all mocks params
func (o *CleanAllMocksParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the clean all mocks params
func (o *CleanAllMocksParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithChannelName adds the channelName to the clean all mocks params
func (o *CleanAllMocksParams) WithChannelName(channelName string) *CleanAllMocksParams {
	o.SetChannelName(channelName)
	return o
}

// SetChannelName adds the channelName to the clean all mocks params
func (o *CleanAllMocksParams) SetChannelName(channelName string) {
	o.ChannelName = channelName
}

// WithNamespace adds the namespace to the clean all mocks params
func (o *CleanAllMocksParams) WithNamespace(namespace string) *CleanAllMocksParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the clean all mocks params
func (o *CleanAllMocksParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *CleanAllMocksParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
