// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_channel

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

// NewSingleAdminDeleteChannelParams creates a new SingleAdminDeleteChannelParams object
// with the default values initialized.
func NewSingleAdminDeleteChannelParams() *SingleAdminDeleteChannelParams {
	var ()
	return &SingleAdminDeleteChannelParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewSingleAdminDeleteChannelParamsWithTimeout creates a new SingleAdminDeleteChannelParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewSingleAdminDeleteChannelParamsWithTimeout(timeout time.Duration) *SingleAdminDeleteChannelParams {
	var ()
	return &SingleAdminDeleteChannelParams{

		timeout: timeout,
	}
}

// NewSingleAdminDeleteChannelParamsWithContext creates a new SingleAdminDeleteChannelParams object
// with the default values initialized, and the ability to set a context for a request
func NewSingleAdminDeleteChannelParamsWithContext(ctx context.Context) *SingleAdminDeleteChannelParams {
	var ()
	return &SingleAdminDeleteChannelParams{

		Context: ctx,
	}
}

// NewSingleAdminDeleteChannelParamsWithHTTPClient creates a new SingleAdminDeleteChannelParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewSingleAdminDeleteChannelParamsWithHTTPClient(client *http.Client) *SingleAdminDeleteChannelParams {
	var ()
	return &SingleAdminDeleteChannelParams{
		HTTPClient: client,
	}
}

/*SingleAdminDeleteChannelParams contains all the parameters to send to the API endpoint
for the single admin delete channel operation typically these are written to a http.Request
*/
type SingleAdminDeleteChannelParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ChannelID
	  channelID

	*/
	ChannelID string
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the single admin delete channel params
func (o *SingleAdminDeleteChannelParams) WithTimeout(timeout time.Duration) *SingleAdminDeleteChannelParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the single admin delete channel params
func (o *SingleAdminDeleteChannelParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the single admin delete channel params
func (o *SingleAdminDeleteChannelParams) WithContext(ctx context.Context) *SingleAdminDeleteChannelParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the single admin delete channel params
func (o *SingleAdminDeleteChannelParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the single admin delete channel params
func (o *SingleAdminDeleteChannelParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the single admin delete channel params
func (o *SingleAdminDeleteChannelParams) WithHTTPClient(client *http.Client) *SingleAdminDeleteChannelParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the single admin delete channel params
func (o *SingleAdminDeleteChannelParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the single admin delete channel params
func (o *SingleAdminDeleteChannelParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithChannelID adds the channelID to the single admin delete channel params
func (o *SingleAdminDeleteChannelParams) WithChannelID(channelID string) *SingleAdminDeleteChannelParams {
	o.SetChannelID(channelID)
	return o
}

// SetChannelID adds the channelId to the single admin delete channel params
func (o *SingleAdminDeleteChannelParams) SetChannelID(channelID string) {
	o.ChannelID = channelID
}

// WithNamespace adds the namespace to the single admin delete channel params
func (o *SingleAdminDeleteChannelParams) WithNamespace(namespace string) *SingleAdminDeleteChannelParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the single admin delete channel params
func (o *SingleAdminDeleteChannelParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *SingleAdminDeleteChannelParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param channelId
	if err := r.SetPathParam("channelId", o.ChannelID); err != nil {
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
