// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_channel

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

// NewDeleteChannelParams creates a new DeleteChannelParams object
// with the default values initialized.
func NewDeleteChannelParams() *DeleteChannelParams {
	var ()
	return &DeleteChannelParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteChannelParamsWithTimeout creates a new DeleteChannelParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteChannelParamsWithTimeout(timeout time.Duration) *DeleteChannelParams {
	var ()
	return &DeleteChannelParams{

		timeout: timeout,
	}
}

// NewDeleteChannelParamsWithContext creates a new DeleteChannelParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteChannelParamsWithContext(ctx context.Context) *DeleteChannelParams {
	var ()
	return &DeleteChannelParams{

		Context: ctx,
	}
}

// NewDeleteChannelParamsWithHTTPClient creates a new DeleteChannelParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteChannelParamsWithHTTPClient(client *http.Client) *DeleteChannelParams {
	var ()
	return &DeleteChannelParams{
		HTTPClient: client,
	}
}

/*DeleteChannelParams contains all the parameters to send to the API endpoint
for the delete channel operation typically these are written to a http.Request
*/
type DeleteChannelParams struct {

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
	/*UserID
	  userID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the delete channel params
func (o *DeleteChannelParams) WithTimeout(timeout time.Duration) *DeleteChannelParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete channel params
func (o *DeleteChannelParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete channel params
func (o *DeleteChannelParams) WithContext(ctx context.Context) *DeleteChannelParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete channel params
func (o *DeleteChannelParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete channel params
func (o *DeleteChannelParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete channel params
func (o *DeleteChannelParams) WithHTTPClient(client *http.Client) *DeleteChannelParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete channel params
func (o *DeleteChannelParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete channel params
func (o *DeleteChannelParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteChannelParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithChannelID adds the channelID to the delete channel params
func (o *DeleteChannelParams) WithChannelID(channelID string) *DeleteChannelParams {
	o.SetChannelID(channelID)
	return o
}

// SetChannelID adds the channelId to the delete channel params
func (o *DeleteChannelParams) SetChannelID(channelID string) {
	o.ChannelID = channelID
}

// WithNamespace adds the namespace to the delete channel params
func (o *DeleteChannelParams) WithNamespace(namespace string) *DeleteChannelParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete channel params
func (o *DeleteChannelParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the delete channel params
func (o *DeleteChannelParams) WithUserID(userID string) *DeleteChannelParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the delete channel params
func (o *DeleteChannelParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteChannelParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
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
