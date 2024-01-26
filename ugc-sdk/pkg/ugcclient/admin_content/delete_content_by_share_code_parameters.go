// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_content

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

// NewDeleteContentByShareCodeParams creates a new DeleteContentByShareCodeParams object
// with the default values initialized.
func NewDeleteContentByShareCodeParams() *DeleteContentByShareCodeParams {
	var ()
	return &DeleteContentByShareCodeParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteContentByShareCodeParamsWithTimeout creates a new DeleteContentByShareCodeParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteContentByShareCodeParamsWithTimeout(timeout time.Duration) *DeleteContentByShareCodeParams {
	var ()
	return &DeleteContentByShareCodeParams{

		timeout: timeout,
	}
}

// NewDeleteContentByShareCodeParamsWithContext creates a new DeleteContentByShareCodeParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteContentByShareCodeParamsWithContext(ctx context.Context) *DeleteContentByShareCodeParams {
	var ()
	return &DeleteContentByShareCodeParams{

		Context: ctx,
	}
}

// NewDeleteContentByShareCodeParamsWithHTTPClient creates a new DeleteContentByShareCodeParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteContentByShareCodeParamsWithHTTPClient(client *http.Client) *DeleteContentByShareCodeParams {
	var ()
	return &DeleteContentByShareCodeParams{
		HTTPClient: client,
	}
}

/*DeleteContentByShareCodeParams contains all the parameters to send to the API endpoint
for the delete content by share code operation typically these are written to a http.Request
*/
type DeleteContentByShareCodeParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ChannelID
	  channel ID

	*/
	ChannelID string
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*ShareCode
	  share code

	*/
	ShareCode string
	/*UserID
	  user ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the delete content by share code params
func (o *DeleteContentByShareCodeParams) WithTimeout(timeout time.Duration) *DeleteContentByShareCodeParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete content by share code params
func (o *DeleteContentByShareCodeParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete content by share code params
func (o *DeleteContentByShareCodeParams) WithContext(ctx context.Context) *DeleteContentByShareCodeParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete content by share code params
func (o *DeleteContentByShareCodeParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete content by share code params
func (o *DeleteContentByShareCodeParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete content by share code params
func (o *DeleteContentByShareCodeParams) WithHTTPClient(client *http.Client) *DeleteContentByShareCodeParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete content by share code params
func (o *DeleteContentByShareCodeParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete content by share code params
func (o *DeleteContentByShareCodeParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteContentByShareCodeParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithChannelID adds the channelID to the delete content by share code params
func (o *DeleteContentByShareCodeParams) WithChannelID(channelID string) *DeleteContentByShareCodeParams {
	o.SetChannelID(channelID)
	return o
}

// SetChannelID adds the channelId to the delete content by share code params
func (o *DeleteContentByShareCodeParams) SetChannelID(channelID string) {
	o.ChannelID = channelID
}

// WithNamespace adds the namespace to the delete content by share code params
func (o *DeleteContentByShareCodeParams) WithNamespace(namespace string) *DeleteContentByShareCodeParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete content by share code params
func (o *DeleteContentByShareCodeParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithShareCode adds the shareCode to the delete content by share code params
func (o *DeleteContentByShareCodeParams) WithShareCode(shareCode string) *DeleteContentByShareCodeParams {
	o.SetShareCode(shareCode)
	return o
}

// SetShareCode adds the shareCode to the delete content by share code params
func (o *DeleteContentByShareCodeParams) SetShareCode(shareCode string) {
	o.ShareCode = shareCode
}

// WithUserID adds the userID to the delete content by share code params
func (o *DeleteContentByShareCodeParams) WithUserID(userID string) *DeleteContentByShareCodeParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the delete content by share code params
func (o *DeleteContentByShareCodeParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteContentByShareCodeParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param shareCode
	if err := r.SetPathParam("shareCode", o.ShareCode); err != nil {
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
