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

// NewGetAllMockMatchesParams creates a new GetAllMockMatchesParams object
// with the default values initialized.
func NewGetAllMockMatchesParams() *GetAllMockMatchesParams {
	var ()
	return &GetAllMockMatchesParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetAllMockMatchesParamsWithTimeout creates a new GetAllMockMatchesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetAllMockMatchesParamsWithTimeout(timeout time.Duration) *GetAllMockMatchesParams {
	var ()
	return &GetAllMockMatchesParams{

		timeout: timeout,
	}
}

// NewGetAllMockMatchesParamsWithContext creates a new GetAllMockMatchesParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetAllMockMatchesParamsWithContext(ctx context.Context) *GetAllMockMatchesParams {
	var ()
	return &GetAllMockMatchesParams{

		Context: ctx,
	}
}

// NewGetAllMockMatchesParamsWithHTTPClient creates a new GetAllMockMatchesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetAllMockMatchesParamsWithHTTPClient(client *http.Client) *GetAllMockMatchesParams {
	var ()
	return &GetAllMockMatchesParams{
		HTTPClient: client,
	}
}

/*GetAllMockMatchesParams contains all the parameters to send to the API endpoint
for the get all mock matches operation typically these are written to a http.Request
*/
type GetAllMockMatchesParams struct {

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

// WithTimeout adds the timeout to the get all mock matches params
func (o *GetAllMockMatchesParams) WithTimeout(timeout time.Duration) *GetAllMockMatchesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get all mock matches params
func (o *GetAllMockMatchesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get all mock matches params
func (o *GetAllMockMatchesParams) WithContext(ctx context.Context) *GetAllMockMatchesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get all mock matches params
func (o *GetAllMockMatchesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get all mock matches params
func (o *GetAllMockMatchesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get all mock matches params
func (o *GetAllMockMatchesParams) WithHTTPClient(client *http.Client) *GetAllMockMatchesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get all mock matches params
func (o *GetAllMockMatchesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get all mock matches params
func (o *GetAllMockMatchesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithChannelName adds the channelName to the get all mock matches params
func (o *GetAllMockMatchesParams) WithChannelName(channelName string) *GetAllMockMatchesParams {
	o.SetChannelName(channelName)
	return o
}

// SetChannelName adds the channelName to the get all mock matches params
func (o *GetAllMockMatchesParams) SetChannelName(channelName string) {
	o.ChannelName = channelName
}

// WithNamespace adds the namespace to the get all mock matches params
func (o *GetAllMockMatchesParams) WithNamespace(namespace string) *GetAllMockMatchesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get all mock matches params
func (o *GetAllMockMatchesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetAllMockMatchesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
