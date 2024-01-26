// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_content_v2

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

// NewPublicDeleteContentByShareCodeV2Params creates a new PublicDeleteContentByShareCodeV2Params object
// with the default values initialized.
func NewPublicDeleteContentByShareCodeV2Params() *PublicDeleteContentByShareCodeV2Params {
	var ()
	return &PublicDeleteContentByShareCodeV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicDeleteContentByShareCodeV2ParamsWithTimeout creates a new PublicDeleteContentByShareCodeV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicDeleteContentByShareCodeV2ParamsWithTimeout(timeout time.Duration) *PublicDeleteContentByShareCodeV2Params {
	var ()
	return &PublicDeleteContentByShareCodeV2Params{

		timeout: timeout,
	}
}

// NewPublicDeleteContentByShareCodeV2ParamsWithContext creates a new PublicDeleteContentByShareCodeV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicDeleteContentByShareCodeV2ParamsWithContext(ctx context.Context) *PublicDeleteContentByShareCodeV2Params {
	var ()
	return &PublicDeleteContentByShareCodeV2Params{

		Context: ctx,
	}
}

// NewPublicDeleteContentByShareCodeV2ParamsWithHTTPClient creates a new PublicDeleteContentByShareCodeV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicDeleteContentByShareCodeV2ParamsWithHTTPClient(client *http.Client) *PublicDeleteContentByShareCodeV2Params {
	var ()
	return &PublicDeleteContentByShareCodeV2Params{
		HTTPClient: client,
	}
}

/*PublicDeleteContentByShareCodeV2Params contains all the parameters to send to the API endpoint
for the public delete content by share code v2 operation typically these are written to a http.Request
*/
type PublicDeleteContentByShareCodeV2Params struct {

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

// WithTimeout adds the timeout to the public delete content by share code v2 params
func (o *PublicDeleteContentByShareCodeV2Params) WithTimeout(timeout time.Duration) *PublicDeleteContentByShareCodeV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public delete content by share code v2 params
func (o *PublicDeleteContentByShareCodeV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public delete content by share code v2 params
func (o *PublicDeleteContentByShareCodeV2Params) WithContext(ctx context.Context) *PublicDeleteContentByShareCodeV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public delete content by share code v2 params
func (o *PublicDeleteContentByShareCodeV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public delete content by share code v2 params
func (o *PublicDeleteContentByShareCodeV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public delete content by share code v2 params
func (o *PublicDeleteContentByShareCodeV2Params) WithHTTPClient(client *http.Client) *PublicDeleteContentByShareCodeV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public delete content by share code v2 params
func (o *PublicDeleteContentByShareCodeV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public delete content by share code v2 params
func (o *PublicDeleteContentByShareCodeV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicDeleteContentByShareCodeV2Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithChannelID adds the channelID to the public delete content by share code v2 params
func (o *PublicDeleteContentByShareCodeV2Params) WithChannelID(channelID string) *PublicDeleteContentByShareCodeV2Params {
	o.SetChannelID(channelID)
	return o
}

// SetChannelID adds the channelId to the public delete content by share code v2 params
func (o *PublicDeleteContentByShareCodeV2Params) SetChannelID(channelID string) {
	o.ChannelID = channelID
}

// WithNamespace adds the namespace to the public delete content by share code v2 params
func (o *PublicDeleteContentByShareCodeV2Params) WithNamespace(namespace string) *PublicDeleteContentByShareCodeV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public delete content by share code v2 params
func (o *PublicDeleteContentByShareCodeV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithShareCode adds the shareCode to the public delete content by share code v2 params
func (o *PublicDeleteContentByShareCodeV2Params) WithShareCode(shareCode string) *PublicDeleteContentByShareCodeV2Params {
	o.SetShareCode(shareCode)
	return o
}

// SetShareCode adds the shareCode to the public delete content by share code v2 params
func (o *PublicDeleteContentByShareCodeV2Params) SetShareCode(shareCode string) {
	o.ShareCode = shareCode
}

// WithUserID adds the userID to the public delete content by share code v2 params
func (o *PublicDeleteContentByShareCodeV2Params) WithUserID(userID string) *PublicDeleteContentByShareCodeV2Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public delete content by share code v2 params
func (o *PublicDeleteContentByShareCodeV2Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicDeleteContentByShareCodeV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
