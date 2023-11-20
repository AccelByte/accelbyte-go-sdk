// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_content_legacy

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

// NewPublicDeleteContentByShareCodeParams creates a new PublicDeleteContentByShareCodeParams object
// with the default values initialized.
func NewPublicDeleteContentByShareCodeParams() *PublicDeleteContentByShareCodeParams {
	var ()
	return &PublicDeleteContentByShareCodeParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicDeleteContentByShareCodeParamsWithTimeout creates a new PublicDeleteContentByShareCodeParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicDeleteContentByShareCodeParamsWithTimeout(timeout time.Duration) *PublicDeleteContentByShareCodeParams {
	var ()
	return &PublicDeleteContentByShareCodeParams{

		timeout: timeout,
	}
}

// NewPublicDeleteContentByShareCodeParamsWithContext creates a new PublicDeleteContentByShareCodeParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicDeleteContentByShareCodeParamsWithContext(ctx context.Context) *PublicDeleteContentByShareCodeParams {
	var ()
	return &PublicDeleteContentByShareCodeParams{

		Context: ctx,
	}
}

// NewPublicDeleteContentByShareCodeParamsWithHTTPClient creates a new PublicDeleteContentByShareCodeParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicDeleteContentByShareCodeParamsWithHTTPClient(client *http.Client) *PublicDeleteContentByShareCodeParams {
	var ()
	return &PublicDeleteContentByShareCodeParams{
		HTTPClient: client,
	}
}

/*PublicDeleteContentByShareCodeParams contains all the parameters to send to the API endpoint
for the public delete content by share code operation typically these are written to a http.Request
*/
type PublicDeleteContentByShareCodeParams struct {

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
}

// WithTimeout adds the timeout to the public delete content by share code params
func (o *PublicDeleteContentByShareCodeParams) WithTimeout(timeout time.Duration) *PublicDeleteContentByShareCodeParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public delete content by share code params
func (o *PublicDeleteContentByShareCodeParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public delete content by share code params
func (o *PublicDeleteContentByShareCodeParams) WithContext(ctx context.Context) *PublicDeleteContentByShareCodeParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public delete content by share code params
func (o *PublicDeleteContentByShareCodeParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public delete content by share code params
func (o *PublicDeleteContentByShareCodeParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public delete content by share code params
func (o *PublicDeleteContentByShareCodeParams) WithHTTPClient(client *http.Client) *PublicDeleteContentByShareCodeParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public delete content by share code params
func (o *PublicDeleteContentByShareCodeParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public delete content by share code params
func (o *PublicDeleteContentByShareCodeParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithChannelID adds the channelID to the public delete content by share code params
func (o *PublicDeleteContentByShareCodeParams) WithChannelID(channelID string) *PublicDeleteContentByShareCodeParams {
	o.SetChannelID(channelID)
	return o
}

// SetChannelID adds the channelId to the public delete content by share code params
func (o *PublicDeleteContentByShareCodeParams) SetChannelID(channelID string) {
	o.ChannelID = channelID
}

// WithNamespace adds the namespace to the public delete content by share code params
func (o *PublicDeleteContentByShareCodeParams) WithNamespace(namespace string) *PublicDeleteContentByShareCodeParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public delete content by share code params
func (o *PublicDeleteContentByShareCodeParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithShareCode adds the shareCode to the public delete content by share code params
func (o *PublicDeleteContentByShareCodeParams) WithShareCode(shareCode string) *PublicDeleteContentByShareCodeParams {
	o.SetShareCode(shareCode)
	return o
}

// SetShareCode adds the shareCode to the public delete content by share code params
func (o *PublicDeleteContentByShareCodeParams) SetShareCode(shareCode string) {
	o.ShareCode = shareCode
}

// WithUserID adds the userID to the public delete content by share code params
func (o *PublicDeleteContentByShareCodeParams) WithUserID(userID string) *PublicDeleteContentByShareCodeParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public delete content by share code params
func (o *PublicDeleteContentByShareCodeParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicDeleteContentByShareCodeParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
