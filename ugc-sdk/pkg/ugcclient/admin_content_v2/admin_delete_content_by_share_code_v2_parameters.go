// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_content_v2

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

// NewAdminDeleteContentByShareCodeV2Params creates a new AdminDeleteContentByShareCodeV2Params object
// with the default values initialized.
func NewAdminDeleteContentByShareCodeV2Params() *AdminDeleteContentByShareCodeV2Params {
	var ()
	return &AdminDeleteContentByShareCodeV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminDeleteContentByShareCodeV2ParamsWithTimeout creates a new AdminDeleteContentByShareCodeV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminDeleteContentByShareCodeV2ParamsWithTimeout(timeout time.Duration) *AdminDeleteContentByShareCodeV2Params {
	var ()
	return &AdminDeleteContentByShareCodeV2Params{

		timeout: timeout,
	}
}

// NewAdminDeleteContentByShareCodeV2ParamsWithContext creates a new AdminDeleteContentByShareCodeV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminDeleteContentByShareCodeV2ParamsWithContext(ctx context.Context) *AdminDeleteContentByShareCodeV2Params {
	var ()
	return &AdminDeleteContentByShareCodeV2Params{

		Context: ctx,
	}
}

// NewAdminDeleteContentByShareCodeV2ParamsWithHTTPClient creates a new AdminDeleteContentByShareCodeV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminDeleteContentByShareCodeV2ParamsWithHTTPClient(client *http.Client) *AdminDeleteContentByShareCodeV2Params {
	var ()
	return &AdminDeleteContentByShareCodeV2Params{
		HTTPClient: client,
	}
}

/*AdminDeleteContentByShareCodeV2Params contains all the parameters to send to the API endpoint
for the admin delete content by share code v2 operation typically these are written to a http.Request
*/
type AdminDeleteContentByShareCodeV2Params struct {

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

// WithTimeout adds the timeout to the admin delete content by share code v2 params
func (o *AdminDeleteContentByShareCodeV2Params) WithTimeout(timeout time.Duration) *AdminDeleteContentByShareCodeV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin delete content by share code v2 params
func (o *AdminDeleteContentByShareCodeV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin delete content by share code v2 params
func (o *AdminDeleteContentByShareCodeV2Params) WithContext(ctx context.Context) *AdminDeleteContentByShareCodeV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin delete content by share code v2 params
func (o *AdminDeleteContentByShareCodeV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin delete content by share code v2 params
func (o *AdminDeleteContentByShareCodeV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin delete content by share code v2 params
func (o *AdminDeleteContentByShareCodeV2Params) WithHTTPClient(client *http.Client) *AdminDeleteContentByShareCodeV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin delete content by share code v2 params
func (o *AdminDeleteContentByShareCodeV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin delete content by share code v2 params
func (o *AdminDeleteContentByShareCodeV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminDeleteContentByShareCodeV2Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithChannelID adds the channelID to the admin delete content by share code v2 params
func (o *AdminDeleteContentByShareCodeV2Params) WithChannelID(channelID string) *AdminDeleteContentByShareCodeV2Params {
	o.SetChannelID(channelID)
	return o
}

// SetChannelID adds the channelId to the admin delete content by share code v2 params
func (o *AdminDeleteContentByShareCodeV2Params) SetChannelID(channelID string) {
	o.ChannelID = channelID
}

// WithNamespace adds the namespace to the admin delete content by share code v2 params
func (o *AdminDeleteContentByShareCodeV2Params) WithNamespace(namespace string) *AdminDeleteContentByShareCodeV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin delete content by share code v2 params
func (o *AdminDeleteContentByShareCodeV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithShareCode adds the shareCode to the admin delete content by share code v2 params
func (o *AdminDeleteContentByShareCodeV2Params) WithShareCode(shareCode string) *AdminDeleteContentByShareCodeV2Params {
	o.SetShareCode(shareCode)
	return o
}

// SetShareCode adds the shareCode to the admin delete content by share code v2 params
func (o *AdminDeleteContentByShareCodeV2Params) SetShareCode(shareCode string) {
	o.ShareCode = shareCode
}

// WithUserID adds the userID to the admin delete content by share code v2 params
func (o *AdminDeleteContentByShareCodeV2Params) WithUserID(userID string) *AdminDeleteContentByShareCodeV2Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin delete content by share code v2 params
func (o *AdminDeleteContentByShareCodeV2Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminDeleteContentByShareCodeV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
