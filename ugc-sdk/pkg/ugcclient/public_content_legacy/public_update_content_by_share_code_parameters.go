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

	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
)

// NewPublicUpdateContentByShareCodeParams creates a new PublicUpdateContentByShareCodeParams object
// with the default values initialized.
func NewPublicUpdateContentByShareCodeParams() *PublicUpdateContentByShareCodeParams {
	var ()
	return &PublicUpdateContentByShareCodeParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicUpdateContentByShareCodeParamsWithTimeout creates a new PublicUpdateContentByShareCodeParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicUpdateContentByShareCodeParamsWithTimeout(timeout time.Duration) *PublicUpdateContentByShareCodeParams {
	var ()
	return &PublicUpdateContentByShareCodeParams{

		timeout: timeout,
	}
}

// NewPublicUpdateContentByShareCodeParamsWithContext creates a new PublicUpdateContentByShareCodeParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicUpdateContentByShareCodeParamsWithContext(ctx context.Context) *PublicUpdateContentByShareCodeParams {
	var ()
	return &PublicUpdateContentByShareCodeParams{

		Context: ctx,
	}
}

// NewPublicUpdateContentByShareCodeParamsWithHTTPClient creates a new PublicUpdateContentByShareCodeParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicUpdateContentByShareCodeParamsWithHTTPClient(client *http.Client) *PublicUpdateContentByShareCodeParams {
	var ()
	return &PublicUpdateContentByShareCodeParams{
		HTTPClient: client,
	}
}

/*PublicUpdateContentByShareCodeParams contains all the parameters to send to the API endpoint
for the public update content by share code operation typically these are written to a http.Request
*/
type PublicUpdateContentByShareCodeParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *ugcclientmodels.ModelsUpdateContentRequest
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

// WithTimeout adds the timeout to the public update content by share code params
func (o *PublicUpdateContentByShareCodeParams) WithTimeout(timeout time.Duration) *PublicUpdateContentByShareCodeParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public update content by share code params
func (o *PublicUpdateContentByShareCodeParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public update content by share code params
func (o *PublicUpdateContentByShareCodeParams) WithContext(ctx context.Context) *PublicUpdateContentByShareCodeParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public update content by share code params
func (o *PublicUpdateContentByShareCodeParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public update content by share code params
func (o *PublicUpdateContentByShareCodeParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public update content by share code params
func (o *PublicUpdateContentByShareCodeParams) WithHTTPClient(client *http.Client) *PublicUpdateContentByShareCodeParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public update content by share code params
func (o *PublicUpdateContentByShareCodeParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public update content by share code params
func (o *PublicUpdateContentByShareCodeParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicUpdateContentByShareCodeParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the public update content by share code params
func (o *PublicUpdateContentByShareCodeParams) WithBody(body *ugcclientmodels.ModelsUpdateContentRequest) *PublicUpdateContentByShareCodeParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public update content by share code params
func (o *PublicUpdateContentByShareCodeParams) SetBody(body *ugcclientmodels.ModelsUpdateContentRequest) {
	o.Body = body
}

// WithChannelID adds the channelID to the public update content by share code params
func (o *PublicUpdateContentByShareCodeParams) WithChannelID(channelID string) *PublicUpdateContentByShareCodeParams {
	o.SetChannelID(channelID)
	return o
}

// SetChannelID adds the channelId to the public update content by share code params
func (o *PublicUpdateContentByShareCodeParams) SetChannelID(channelID string) {
	o.ChannelID = channelID
}

// WithNamespace adds the namespace to the public update content by share code params
func (o *PublicUpdateContentByShareCodeParams) WithNamespace(namespace string) *PublicUpdateContentByShareCodeParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public update content by share code params
func (o *PublicUpdateContentByShareCodeParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithShareCode adds the shareCode to the public update content by share code params
func (o *PublicUpdateContentByShareCodeParams) WithShareCode(shareCode string) *PublicUpdateContentByShareCodeParams {
	o.SetShareCode(shareCode)
	return o
}

// SetShareCode adds the shareCode to the public update content by share code params
func (o *PublicUpdateContentByShareCodeParams) SetShareCode(shareCode string) {
	o.ShareCode = shareCode
}

// WithUserID adds the userID to the public update content by share code params
func (o *PublicUpdateContentByShareCodeParams) WithUserID(userID string) *PublicUpdateContentByShareCodeParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public update content by share code params
func (o *PublicUpdateContentByShareCodeParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicUpdateContentByShareCodeParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
