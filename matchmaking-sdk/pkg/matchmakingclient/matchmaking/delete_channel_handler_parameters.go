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

// NewDeleteChannelHandlerParams creates a new DeleteChannelHandlerParams object
// with the default values initialized.
func NewDeleteChannelHandlerParams() *DeleteChannelHandlerParams {
	var ()
	return &DeleteChannelHandlerParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteChannelHandlerParamsWithTimeout creates a new DeleteChannelHandlerParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteChannelHandlerParamsWithTimeout(timeout time.Duration) *DeleteChannelHandlerParams {
	var ()
	return &DeleteChannelHandlerParams{

		timeout: timeout,
	}
}

// NewDeleteChannelHandlerParamsWithContext creates a new DeleteChannelHandlerParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteChannelHandlerParamsWithContext(ctx context.Context) *DeleteChannelHandlerParams {
	var ()
	return &DeleteChannelHandlerParams{

		Context: ctx,
	}
}

// NewDeleteChannelHandlerParamsWithHTTPClient creates a new DeleteChannelHandlerParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteChannelHandlerParamsWithHTTPClient(client *http.Client) *DeleteChannelHandlerParams {
	var ()
	return &DeleteChannelHandlerParams{
		HTTPClient: client,
	}
}

/*DeleteChannelHandlerParams contains all the parameters to send to the API endpoint
for the delete channel handler operation typically these are written to a http.Request
*/
type DeleteChannelHandlerParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Channel
	  channel to be deleted

	*/
	Channel string
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the delete channel handler params
func (o *DeleteChannelHandlerParams) WithTimeout(timeout time.Duration) *DeleteChannelHandlerParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete channel handler params
func (o *DeleteChannelHandlerParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete channel handler params
func (o *DeleteChannelHandlerParams) WithContext(ctx context.Context) *DeleteChannelHandlerParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete channel handler params
func (o *DeleteChannelHandlerParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete channel handler params
func (o *DeleteChannelHandlerParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete channel handler params
func (o *DeleteChannelHandlerParams) WithHTTPClient(client *http.Client) *DeleteChannelHandlerParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete channel handler params
func (o *DeleteChannelHandlerParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete channel handler params
func (o *DeleteChannelHandlerParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteChannelHandlerParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithChannel adds the channel to the delete channel handler params
func (o *DeleteChannelHandlerParams) WithChannel(channel string) *DeleteChannelHandlerParams {
	o.SetChannel(channel)
	return o
}

// SetChannel adds the channel to the delete channel handler params
func (o *DeleteChannelHandlerParams) SetChannel(channel string) {
	o.Channel = channel
}

// WithNamespace adds the namespace to the delete channel handler params
func (o *DeleteChannelHandlerParams) WithNamespace(namespace string) *DeleteChannelHandlerParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete channel handler params
func (o *DeleteChannelHandlerParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteChannelHandlerParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param channel
	if err := r.SetPathParam("channel", o.Channel); err != nil {
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

	if o.XFlightId == nil {
		if err := r.SetHeaderParam("X-Flight-Id", utils.GetDefaultFlightID().Value); err != nil {
			return err
		}
	} else {
		if err := r.SetHeaderParam("X-Flight-Id", *o.XFlightId); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
