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

// NewPublicDeleteContentV2Params creates a new PublicDeleteContentV2Params object
// with the default values initialized.
func NewPublicDeleteContentV2Params() *PublicDeleteContentV2Params {
	var ()
	return &PublicDeleteContentV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicDeleteContentV2ParamsWithTimeout creates a new PublicDeleteContentV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicDeleteContentV2ParamsWithTimeout(timeout time.Duration) *PublicDeleteContentV2Params {
	var ()
	return &PublicDeleteContentV2Params{

		timeout: timeout,
	}
}

// NewPublicDeleteContentV2ParamsWithContext creates a new PublicDeleteContentV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicDeleteContentV2ParamsWithContext(ctx context.Context) *PublicDeleteContentV2Params {
	var ()
	return &PublicDeleteContentV2Params{

		Context: ctx,
	}
}

// NewPublicDeleteContentV2ParamsWithHTTPClient creates a new PublicDeleteContentV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicDeleteContentV2ParamsWithHTTPClient(client *http.Client) *PublicDeleteContentV2Params {
	var ()
	return &PublicDeleteContentV2Params{
		HTTPClient: client,
	}
}

/*PublicDeleteContentV2Params contains all the parameters to send to the API endpoint
for the public delete content v2 operation typically these are written to a http.Request
*/
type PublicDeleteContentV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ChannelID
	  channel ID

	*/
	ChannelID string
	/*ContentID
	  content ID

	*/
	ContentID string
	/*Namespace
	  namespace of the game

	*/
	Namespace string
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

// WithTimeout adds the timeout to the public delete content v2 params
func (o *PublicDeleteContentV2Params) WithTimeout(timeout time.Duration) *PublicDeleteContentV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public delete content v2 params
func (o *PublicDeleteContentV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public delete content v2 params
func (o *PublicDeleteContentV2Params) WithContext(ctx context.Context) *PublicDeleteContentV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public delete content v2 params
func (o *PublicDeleteContentV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public delete content v2 params
func (o *PublicDeleteContentV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public delete content v2 params
func (o *PublicDeleteContentV2Params) WithHTTPClient(client *http.Client) *PublicDeleteContentV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public delete content v2 params
func (o *PublicDeleteContentV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public delete content v2 params
func (o *PublicDeleteContentV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicDeleteContentV2Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithChannelID adds the channelID to the public delete content v2 params
func (o *PublicDeleteContentV2Params) WithChannelID(channelID string) *PublicDeleteContentV2Params {
	o.SetChannelID(channelID)
	return o
}

// SetChannelID adds the channelId to the public delete content v2 params
func (o *PublicDeleteContentV2Params) SetChannelID(channelID string) {
	o.ChannelID = channelID
}

// WithContentID adds the contentID to the public delete content v2 params
func (o *PublicDeleteContentV2Params) WithContentID(contentID string) *PublicDeleteContentV2Params {
	o.SetContentID(contentID)
	return o
}

// SetContentID adds the contentId to the public delete content v2 params
func (o *PublicDeleteContentV2Params) SetContentID(contentID string) {
	o.ContentID = contentID
}

// WithNamespace adds the namespace to the public delete content v2 params
func (o *PublicDeleteContentV2Params) WithNamespace(namespace string) *PublicDeleteContentV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public delete content v2 params
func (o *PublicDeleteContentV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the public delete content v2 params
func (o *PublicDeleteContentV2Params) WithUserID(userID string) *PublicDeleteContentV2Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public delete content v2 params
func (o *PublicDeleteContentV2Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicDeleteContentV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param channelId
	if err := r.SetPathParam("channelId", o.ChannelID); err != nil {
		return err
	}

	// path param contentId
	if err := r.SetPathParam("contentId", o.ContentID); err != nil {
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
