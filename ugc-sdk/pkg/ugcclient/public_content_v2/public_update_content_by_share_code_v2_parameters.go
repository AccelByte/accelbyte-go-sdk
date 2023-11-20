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

	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
)

// NewPublicUpdateContentByShareCodeV2Params creates a new PublicUpdateContentByShareCodeV2Params object
// with the default values initialized.
func NewPublicUpdateContentByShareCodeV2Params() *PublicUpdateContentByShareCodeV2Params {
	var ()
	return &PublicUpdateContentByShareCodeV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicUpdateContentByShareCodeV2ParamsWithTimeout creates a new PublicUpdateContentByShareCodeV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicUpdateContentByShareCodeV2ParamsWithTimeout(timeout time.Duration) *PublicUpdateContentByShareCodeV2Params {
	var ()
	return &PublicUpdateContentByShareCodeV2Params{

		timeout: timeout,
	}
}

// NewPublicUpdateContentByShareCodeV2ParamsWithContext creates a new PublicUpdateContentByShareCodeV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicUpdateContentByShareCodeV2ParamsWithContext(ctx context.Context) *PublicUpdateContentByShareCodeV2Params {
	var ()
	return &PublicUpdateContentByShareCodeV2Params{

		Context: ctx,
	}
}

// NewPublicUpdateContentByShareCodeV2ParamsWithHTTPClient creates a new PublicUpdateContentByShareCodeV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicUpdateContentByShareCodeV2ParamsWithHTTPClient(client *http.Client) *PublicUpdateContentByShareCodeV2Params {
	var ()
	return &PublicUpdateContentByShareCodeV2Params{
		HTTPClient: client,
	}
}

/*PublicUpdateContentByShareCodeV2Params contains all the parameters to send to the API endpoint
for the public update content by share code v2 operation typically these are written to a http.Request
*/
type PublicUpdateContentByShareCodeV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *ugcclientmodels.ModelsUpdateContentRequestV2
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

// WithTimeout adds the timeout to the public update content by share code v2 params
func (o *PublicUpdateContentByShareCodeV2Params) WithTimeout(timeout time.Duration) *PublicUpdateContentByShareCodeV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public update content by share code v2 params
func (o *PublicUpdateContentByShareCodeV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public update content by share code v2 params
func (o *PublicUpdateContentByShareCodeV2Params) WithContext(ctx context.Context) *PublicUpdateContentByShareCodeV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public update content by share code v2 params
func (o *PublicUpdateContentByShareCodeV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public update content by share code v2 params
func (o *PublicUpdateContentByShareCodeV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public update content by share code v2 params
func (o *PublicUpdateContentByShareCodeV2Params) WithHTTPClient(client *http.Client) *PublicUpdateContentByShareCodeV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public update content by share code v2 params
func (o *PublicUpdateContentByShareCodeV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public update content by share code v2 params
func (o *PublicUpdateContentByShareCodeV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the public update content by share code v2 params
func (o *PublicUpdateContentByShareCodeV2Params) WithBody(body *ugcclientmodels.ModelsUpdateContentRequestV2) *PublicUpdateContentByShareCodeV2Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public update content by share code v2 params
func (o *PublicUpdateContentByShareCodeV2Params) SetBody(body *ugcclientmodels.ModelsUpdateContentRequestV2) {
	o.Body = body
}

// WithChannelID adds the channelID to the public update content by share code v2 params
func (o *PublicUpdateContentByShareCodeV2Params) WithChannelID(channelID string) *PublicUpdateContentByShareCodeV2Params {
	o.SetChannelID(channelID)
	return o
}

// SetChannelID adds the channelId to the public update content by share code v2 params
func (o *PublicUpdateContentByShareCodeV2Params) SetChannelID(channelID string) {
	o.ChannelID = channelID
}

// WithNamespace adds the namespace to the public update content by share code v2 params
func (o *PublicUpdateContentByShareCodeV2Params) WithNamespace(namespace string) *PublicUpdateContentByShareCodeV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public update content by share code v2 params
func (o *PublicUpdateContentByShareCodeV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithShareCode adds the shareCode to the public update content by share code v2 params
func (o *PublicUpdateContentByShareCodeV2Params) WithShareCode(shareCode string) *PublicUpdateContentByShareCodeV2Params {
	o.SetShareCode(shareCode)
	return o
}

// SetShareCode adds the shareCode to the public update content by share code v2 params
func (o *PublicUpdateContentByShareCodeV2Params) SetShareCode(shareCode string) {
	o.ShareCode = shareCode
}

// WithUserID adds the userID to the public update content by share code v2 params
func (o *PublicUpdateContentByShareCodeV2Params) WithUserID(userID string) *PublicUpdateContentByShareCodeV2Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public update content by share code v2 params
func (o *PublicUpdateContentByShareCodeV2Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicUpdateContentByShareCodeV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

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
