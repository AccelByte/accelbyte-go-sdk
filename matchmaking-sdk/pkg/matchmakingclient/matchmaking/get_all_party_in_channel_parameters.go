// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package matchmaking

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

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

// NewGetAllPartyInChannelParams creates a new GetAllPartyInChannelParams object
// with the default values initialized.
func NewGetAllPartyInChannelParams() *GetAllPartyInChannelParams {
	var ()
	return &GetAllPartyInChannelParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetAllPartyInChannelParamsWithTimeout creates a new GetAllPartyInChannelParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetAllPartyInChannelParamsWithTimeout(timeout time.Duration) *GetAllPartyInChannelParams {
	var ()
	return &GetAllPartyInChannelParams{

		timeout: timeout,
	}
}

// NewGetAllPartyInChannelParamsWithContext creates a new GetAllPartyInChannelParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetAllPartyInChannelParamsWithContext(ctx context.Context) *GetAllPartyInChannelParams {
	var ()
	return &GetAllPartyInChannelParams{

		Context: ctx,
	}
}

// NewGetAllPartyInChannelParamsWithHTTPClient creates a new GetAllPartyInChannelParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetAllPartyInChannelParamsWithHTTPClient(client *http.Client) *GetAllPartyInChannelParams {
	var ()
	return &GetAllPartyInChannelParams{
		HTTPClient: client,
	}
}

/*GetAllPartyInChannelParams contains all the parameters to send to the API endpoint
for the get all party in channel operation typically these are written to a http.Request
*/
type GetAllPartyInChannelParams struct {

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

// WithTimeout adds the timeout to the get all party in channel params
func (o *GetAllPartyInChannelParams) WithTimeout(timeout time.Duration) *GetAllPartyInChannelParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get all party in channel params
func (o *GetAllPartyInChannelParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get all party in channel params
func (o *GetAllPartyInChannelParams) WithContext(ctx context.Context) *GetAllPartyInChannelParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get all party in channel params
func (o *GetAllPartyInChannelParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get all party in channel params
func (o *GetAllPartyInChannelParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get all party in channel params
func (o *GetAllPartyInChannelParams) WithHTTPClient(client *http.Client) *GetAllPartyInChannelParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get all party in channel params
func (o *GetAllPartyInChannelParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get all party in channel params
func (o *GetAllPartyInChannelParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithChannelName adds the channelName to the get all party in channel params
func (o *GetAllPartyInChannelParams) WithChannelName(channelName string) *GetAllPartyInChannelParams {
	o.SetChannelName(channelName)
	return o
}

// SetChannelName adds the channelName to the get all party in channel params
func (o *GetAllPartyInChannelParams) SetChannelName(channelName string) {
	o.ChannelName = channelName
}

// WithNamespace adds the namespace to the get all party in channel params
func (o *GetAllPartyInChannelParams) WithNamespace(namespace string) *GetAllPartyInChannelParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get all party in channel params
func (o *GetAllPartyInChannelParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetAllPartyInChannelParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
