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

// NewGetAllMockTicketsParams creates a new GetAllMockTicketsParams object
// with the default values initialized.
func NewGetAllMockTicketsParams() *GetAllMockTicketsParams {
	var ()
	return &GetAllMockTicketsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetAllMockTicketsParamsWithTimeout creates a new GetAllMockTicketsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetAllMockTicketsParamsWithTimeout(timeout time.Duration) *GetAllMockTicketsParams {
	var ()
	return &GetAllMockTicketsParams{

		timeout: timeout,
	}
}

// NewGetAllMockTicketsParamsWithContext creates a new GetAllMockTicketsParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetAllMockTicketsParamsWithContext(ctx context.Context) *GetAllMockTicketsParams {
	var ()
	return &GetAllMockTicketsParams{

		Context: ctx,
	}
}

// NewGetAllMockTicketsParamsWithHTTPClient creates a new GetAllMockTicketsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetAllMockTicketsParamsWithHTTPClient(client *http.Client) *GetAllMockTicketsParams {
	var ()
	return &GetAllMockTicketsParams{
		HTTPClient: client,
	}
}

/*GetAllMockTicketsParams contains all the parameters to send to the API endpoint
for the get all mock tickets operation typically these are written to a http.Request
*/
type GetAllMockTicketsParams struct {

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

// WithTimeout adds the timeout to the get all mock tickets params
func (o *GetAllMockTicketsParams) WithTimeout(timeout time.Duration) *GetAllMockTicketsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get all mock tickets params
func (o *GetAllMockTicketsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get all mock tickets params
func (o *GetAllMockTicketsParams) WithContext(ctx context.Context) *GetAllMockTicketsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get all mock tickets params
func (o *GetAllMockTicketsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get all mock tickets params
func (o *GetAllMockTicketsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get all mock tickets params
func (o *GetAllMockTicketsParams) WithHTTPClient(client *http.Client) *GetAllMockTicketsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get all mock tickets params
func (o *GetAllMockTicketsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get all mock tickets params
func (o *GetAllMockTicketsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithChannelName adds the channelName to the get all mock tickets params
func (o *GetAllMockTicketsParams) WithChannelName(channelName string) *GetAllMockTicketsParams {
	o.SetChannelName(channelName)
	return o
}

// SetChannelName adds the channelName to the get all mock tickets params
func (o *GetAllMockTicketsParams) SetChannelName(channelName string) {
	o.ChannelName = channelName
}

// WithNamespace adds the namespace to the get all mock tickets params
func (o *GetAllMockTicketsParams) WithNamespace(namespace string) *GetAllMockTicketsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get all mock tickets params
func (o *GetAllMockTicketsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetAllMockTicketsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
