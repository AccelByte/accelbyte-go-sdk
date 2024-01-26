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

	"github.com/AccelByte/accelbyte-go-sdk/matchmaking-sdk/pkg/matchmakingclientmodels"
)

// NewAddUserIntoSessionInChannelParams creates a new AddUserIntoSessionInChannelParams object
// with the default values initialized.
func NewAddUserIntoSessionInChannelParams() *AddUserIntoSessionInChannelParams {
	var ()
	return &AddUserIntoSessionInChannelParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAddUserIntoSessionInChannelParamsWithTimeout creates a new AddUserIntoSessionInChannelParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAddUserIntoSessionInChannelParamsWithTimeout(timeout time.Duration) *AddUserIntoSessionInChannelParams {
	var ()
	return &AddUserIntoSessionInChannelParams{

		timeout: timeout,
	}
}

// NewAddUserIntoSessionInChannelParamsWithContext creates a new AddUserIntoSessionInChannelParams object
// with the default values initialized, and the ability to set a context for a request
func NewAddUserIntoSessionInChannelParamsWithContext(ctx context.Context) *AddUserIntoSessionInChannelParams {
	var ()
	return &AddUserIntoSessionInChannelParams{

		Context: ctx,
	}
}

// NewAddUserIntoSessionInChannelParamsWithHTTPClient creates a new AddUserIntoSessionInChannelParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAddUserIntoSessionInChannelParamsWithHTTPClient(client *http.Client) *AddUserIntoSessionInChannelParams {
	var ()
	return &AddUserIntoSessionInChannelParams{
		HTTPClient: client,
	}
}

/*AddUserIntoSessionInChannelParams contains all the parameters to send to the API endpoint
for the add user into session in channel operation typically these are written to a http.Request
*/
type AddUserIntoSessionInChannelParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *matchmakingclientmodels.ModelsMatchAddUserIntoSessionRequest
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

// WithTimeout adds the timeout to the add user into session in channel params
func (o *AddUserIntoSessionInChannelParams) WithTimeout(timeout time.Duration) *AddUserIntoSessionInChannelParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the add user into session in channel params
func (o *AddUserIntoSessionInChannelParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the add user into session in channel params
func (o *AddUserIntoSessionInChannelParams) WithContext(ctx context.Context) *AddUserIntoSessionInChannelParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the add user into session in channel params
func (o *AddUserIntoSessionInChannelParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the add user into session in channel params
func (o *AddUserIntoSessionInChannelParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the add user into session in channel params
func (o *AddUserIntoSessionInChannelParams) WithHTTPClient(client *http.Client) *AddUserIntoSessionInChannelParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the add user into session in channel params
func (o *AddUserIntoSessionInChannelParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the add user into session in channel params
func (o *AddUserIntoSessionInChannelParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AddUserIntoSessionInChannelParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the add user into session in channel params
func (o *AddUserIntoSessionInChannelParams) WithBody(body *matchmakingclientmodels.ModelsMatchAddUserIntoSessionRequest) *AddUserIntoSessionInChannelParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the add user into session in channel params
func (o *AddUserIntoSessionInChannelParams) SetBody(body *matchmakingclientmodels.ModelsMatchAddUserIntoSessionRequest) {
	o.Body = body
}

// WithChannelName adds the channelName to the add user into session in channel params
func (o *AddUserIntoSessionInChannelParams) WithChannelName(channelName string) *AddUserIntoSessionInChannelParams {
	o.SetChannelName(channelName)
	return o
}

// SetChannelName adds the channelName to the add user into session in channel params
func (o *AddUserIntoSessionInChannelParams) SetChannelName(channelName string) {
	o.ChannelName = channelName
}

// WithMatchID adds the matchID to the add user into session in channel params
func (o *AddUserIntoSessionInChannelParams) WithMatchID(matchID string) *AddUserIntoSessionInChannelParams {
	o.SetMatchID(matchID)
	return o
}

// SetMatchID adds the matchId to the add user into session in channel params
func (o *AddUserIntoSessionInChannelParams) SetMatchID(matchID string) {
	o.MatchID = matchID
}

// WithNamespace adds the namespace to the add user into session in channel params
func (o *AddUserIntoSessionInChannelParams) WithNamespace(namespace string) *AddUserIntoSessionInChannelParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the add user into session in channel params
func (o *AddUserIntoSessionInChannelParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AddUserIntoSessionInChannelParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

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
