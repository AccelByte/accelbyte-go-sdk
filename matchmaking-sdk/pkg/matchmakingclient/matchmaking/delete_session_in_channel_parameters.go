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

// NewDeleteSessionInChannelParams creates a new DeleteSessionInChannelParams object
// with the default values initialized.
func NewDeleteSessionInChannelParams() *DeleteSessionInChannelParams {
	var ()
	return &DeleteSessionInChannelParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteSessionInChannelParamsWithTimeout creates a new DeleteSessionInChannelParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteSessionInChannelParamsWithTimeout(timeout time.Duration) *DeleteSessionInChannelParams {
	var ()
	return &DeleteSessionInChannelParams{

		timeout: timeout,
	}
}

// NewDeleteSessionInChannelParamsWithContext creates a new DeleteSessionInChannelParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteSessionInChannelParamsWithContext(ctx context.Context) *DeleteSessionInChannelParams {
	var ()
	return &DeleteSessionInChannelParams{

		Context: ctx,
	}
}

// NewDeleteSessionInChannelParamsWithHTTPClient creates a new DeleteSessionInChannelParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteSessionInChannelParamsWithHTTPClient(client *http.Client) *DeleteSessionInChannelParams {
	var ()
	return &DeleteSessionInChannelParams{
		HTTPClient: client,
	}
}

/*DeleteSessionInChannelParams contains all the parameters to send to the API endpoint
for the delete session in channel operation typically these are written to a http.Request
*/
type DeleteSessionInChannelParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ChannelName
	  channel name, accept snake_case, lowercase, and numeric

	*/
	ChannelName string
	/*MatchID
	  ID of the match session

	*/
	MatchID string
	/*Namespace
	  namespace of the game, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the delete session in channel params
func (o *DeleteSessionInChannelParams) WithTimeout(timeout time.Duration) *DeleteSessionInChannelParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete session in channel params
func (o *DeleteSessionInChannelParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete session in channel params
func (o *DeleteSessionInChannelParams) WithContext(ctx context.Context) *DeleteSessionInChannelParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete session in channel params
func (o *DeleteSessionInChannelParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete session in channel params
func (o *DeleteSessionInChannelParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete session in channel params
func (o *DeleteSessionInChannelParams) WithHTTPClient(client *http.Client) *DeleteSessionInChannelParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete session in channel params
func (o *DeleteSessionInChannelParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete session in channel params
func (o *DeleteSessionInChannelParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteSessionInChannelParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithChannelName adds the channelName to the delete session in channel params
func (o *DeleteSessionInChannelParams) WithChannelName(channelName string) *DeleteSessionInChannelParams {
	o.SetChannelName(channelName)
	return o
}

// SetChannelName adds the channelName to the delete session in channel params
func (o *DeleteSessionInChannelParams) SetChannelName(channelName string) {
	o.ChannelName = channelName
}

// WithMatchID adds the matchID to the delete session in channel params
func (o *DeleteSessionInChannelParams) WithMatchID(matchID string) *DeleteSessionInChannelParams {
	o.SetMatchID(matchID)
	return o
}

// SetMatchID adds the matchId to the delete session in channel params
func (o *DeleteSessionInChannelParams) SetMatchID(matchID string) {
	o.MatchID = matchID
}

// WithNamespace adds the namespace to the delete session in channel params
func (o *DeleteSessionInChannelParams) WithNamespace(namespace string) *DeleteSessionInChannelParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete session in channel params
func (o *DeleteSessionInChannelParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteSessionInChannelParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param channelName
	if err := r.SetPathParam("channelName", o.ChannelName); err != nil {
		return err
	}

	// path param matchID
	if err := r.SetPathParam("matchID", o.MatchID); err != nil {
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
